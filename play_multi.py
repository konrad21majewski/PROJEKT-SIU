import sys
import os
import csv
import glob
import numpy as np
from tensorflow.keras.models import load_model
import turtlesim_env_multi
from dqn_multi import DqnMulti


def find_models(directory):
    """Returns a sorted list of *.tf (model directories) in the given directory."""
    if not os.path.isdir(directory):
        return []
    # .tf are directories (tf saved_model format); filter out regular files
    all_models = sorted(os.path.join(directory, f) for f in os.listdir(directory)
                        if f.endswith('.tf') and os.path.isdir(os.path.join(directory, f)))
    return all_models


def evaluate_model(env, dqn, model_path, n_episodes=1):
    """Loads model, runs n_episodes evaluation, returns metrics dict."""
    try:
        dqn.model = load_model(model_path)
    except Exception as e:
        return None

    rewards = []
    goals_list = []
    collision_list = []
    offtrack_list = []
    timeout_list = []

    for ep in range(n_episodes):
        env.reset(sections='random')
        current = {t: a.map for t, a in env.agents.items()}
        last = {t: [m.copy() for m in current[t]] for t in env.agents}
        active = set(env.agents.keys())
        n_agents = len(env.agents)
        episode_reward = 0.0
        total_agent_steps = 0
        goal_count = 0
        collision_count = 0
        offtrack_count = 0
        for step in range(env.MAX_STEPS):
            controls = {}
            for tname in active:
                q = dqn.decision(dqn.model, last[tname], current[tname])
                controls[tname] = np.argmax(q)

            actions = {t: dqn.ctl2act(c) for t, c in controls.items()}
            results = env.step(actions)

            done_this_step = []
            for tname, (new_state, reward, done) in results.items():
                episode_reward += reward
                total_agent_steps += 1
                last[tname] = current[tname]
                current[tname] = new_state
                if done:
                    agent = env.agents[tname]
                    if agent.fd < 0.5:                  # reached goal
                        goal_count += 1
                    elif agent.collision:                # collided with another agent
                        collision_count += 1
                    else:                                # went off-track
                        offtrack_count += 1
                    done_this_step.append(tname)

            for tname in done_this_step:
                active.remove(tname)

            if not active:
                break

        timeout_count = len(active)                      # still active at episode end

        avg_rwd = episode_reward / max(total_agent_steps, 1)
        rewards.append(avg_rwd)
        goals_list.append(goal_count)
        collision_list.append(collision_count)
        offtrack_list.append(offtrack_count)
        timeout_list.append(timeout_count)

    n_ep = len(goals_list)
    ner_val = np.mean(goals_list) / n_agents if n_ep > 0 else 0.0
    sr_val  = 1.0 - np.mean(collision_list) / n_agents if n_ep > 0 else 1.0
    return {
        'avg_reward': np.mean(rewards),
        'std_reward': np.std(rewards),
        'n_agents': n_agents,
        'steps': step + 1,
        'all_agents_done': not active,
        'ner': ner_val,
        'ner_std': np.std([g / n_agents for g in goals_list]) if n_ep > 0 else 0.0,
        'sr': sr_val,
        'sr_std': np.std([1.0 - c / n_agents for c in collision_list]) if n_ep > 0 else 0.0,
        'goals': int(np.round(np.mean(goals_list))),
        'collisions': int(np.round(np.mean(collision_list))),
        'offtrack': int(np.round(np.mean(offtrack_list))),
        'timeout': int(np.round(np.mean(timeout_list))),
    }


if __name__ == '__main__':
    n_episodes = 10
    max_steps = 200
    directory = 'models'
    csv_output = None
    draw_trajectories = True

    args = sys.argv[1:]
    while args:
        a = args.pop(0)
        if a == '--episodes' and args:
            n_episodes = int(args.pop(0))
        elif a == '--max-steps' and args:
            max_steps = int(args.pop(0))
        elif a == '--csv' and args:
            csv_output = args.pop(0)
        elif a == '--draw':
            draw_trajectories = True
        elif a == '--no-draw':
            draw_trajectories = False
        elif a.startswith('--'):
            print(f'Unknown argument: {a}')
            sys.exit(1)
        else:
            directory = a

    models = find_models(directory)
    if not models:
        print(f'No models (*.tf) in directory "{directory}"')
        print(f'Usage: python3 play_multi.py [directory] [--episodes N] [--max-steps N] [--csv FILE] [--draw | --no-draw]')
        sys.exit(1)

    print(f'Found {len(models)} model(s) in {directory}/')
    print(f'Evaluation episodes: {n_episodes}')
    print(f'Draw trajectories: {draw_trajectories}')
    print()

    # Create environment ONCE – all models tested under same conditions
    env = turtlesim_env_multi.provide_env()
    env.PI_BY = 3
    env.DETECT_COLLISION = True
    env.DRAW_TRAJECTORIES = draw_trajectories
    env.MAX_STEPS = max_steps
    env.setup('scenariusz.csv')

    dqn = DqnMulti(env, 'eval')

    results = []

    for mp in models:
        name = os.path.basename(mp)
        print(f'  Testing {name} ... ', end='', flush=True)
        m = evaluate_model(env, dqn, mp, n_episodes)
        if m is None:
            print(f'LOAD ERROR (incompatible architecture)')
        else:
            results.append((name, m))
            status = 'OK' if m['all_agents_done'] else f'timeout({m["steps"]} steps)'
            print(f'NER={m["ner"]:.1%}  SR={m["sr"]:.1%}  reward={m["avg_reward"]:+.2f}  goals={m["goals"]}/{m["n_agents"]}  collisions={m["collisions"]}  offtrack={m["offtrack"]}  timeout={m["timeout"]}  {status}')

    # --------------------------------------------------------
    # Comparison table
    # --------------------------------------------------------
    if results:
        results.sort(key=lambda x: x[1]['ner'], reverse=True)
        print()
        print('=== RANKING (by NER) ===')
        print(f'{"#":>3}  {"Model":<60}  {"NER":>7}  {"SR":>7}  {"G":>3}  {"C":>3}  {"O":>3}  {"T":>3}  {"Reward":>8}  {"+/-":>6}  {"Status":>12}')
        print('-' * 125)
        for i, (name, m) in enumerate(results, 1):
            status = 'OK' if m['all_agents_done'] else f'timeout({m["steps"]} steps)'
            print(f'{i:3d}  {name:<60}  {m["ner"]:6.1%}  {m["sr"]:6.1%}  '
                  f'{m["goals"]:3d}  {m["collisions"]:3d}  {m["offtrack"]:3d}  {m["timeout"]:3d}  '
                  f'{m["avg_reward"]:+8.2f}  {m["std_reward"]:6.2f}  {status:>12}')

        best = results[0]
        print()
        print(f'BEST: {best[0]}')
        print(f'  NER (Navigation Efficiency Ratio) = {best[1]["ner"]:.1%}')
        print(f'  SR  (Safety Ratio)                = {best[1]["sr"]:.1%}')
        print(f'  goals      = {best[1]["goals"]}/{best[1]["n_agents"]} per episode')
        print(f'  collisions = {best[1]["collisions"]}  offtrack = {best[1]["offtrack"]}  timeout = {best[1]["timeout"]}')
        print(f'  avg_reward = {best[1]["avg_reward"]:+.2f}')

        # --------------------------------------------------------
        # Write CSV if requested
        # --------------------------------------------------------
        if csv_output:
            with open(csv_output, 'w', newline='') as f:
                writer = csv.writer(f)
                writer.writerow(['rank', 'model', 'ner', 'sr',
                                 'goals', 'collisions', 'offtrack', 'timeout', 'n_agents',
                                 'avg_reward', 'std_reward', 'status'])
                for i, (name, m) in enumerate(results, 1):
                    status = 'OK' if m['all_agents_done'] else f'timeout({m["steps"]} steps)'
                    writer.writerow([i, name,
                                     f'{m["ner"]:.4f}',
                                     f'{m["sr"]:.4f}',
                                     m['goals'],
                                     m['collisions'],
                                     m['offtrack'],
                                     m['timeout'],
                                     m['n_agents'],
                                     f'{m["avg_reward"]:.6f}',
                                     f'{m["std_reward"]:.6f}',
                                     status])
            print(f'\nResults saved to {csv_output}')
