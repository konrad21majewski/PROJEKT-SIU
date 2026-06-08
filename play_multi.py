import sys
import os
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
    all_completed = []

    for ep in range(n_episodes):
        env.reset(sections='random')
        current = {t: a.map for t, a in env.agents.items()}
        last = {t: [m.copy() for m in current[t]] for t in env.agents}
        active = set(env.agents.keys())
        episode_reward = 0.0

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
                last[tname] = current[tname]
                current[tname] = new_state
                if done:
                    done_this_step.append(tname)

            for tname in done_this_step:
                active.remove(tname)

            if not active:
                break

        avg_rwd = episode_reward / max(step + 1, 1)
        rewards.append(avg_rwd)
        all_completed.append(len(env.agents) - len(active))

    return {
        'avg_reward': np.mean(rewards),
        'std_reward': np.std(rewards),
        'avg_completed': np.mean(all_completed),
        'n_agents': len(env.agents),
        'steps': step + 1,
        'all_agents_done': not active,
    }


if __name__ == '__main__':
    n_episodes = 2
    directory = 'models'

    args = sys.argv[1:]
    while args:
        a = args.pop(0)
        if a == '--episodes' and args:
            n_episodes = int(args.pop(0))
        elif a.startswith('--'):
            print(f'Unknown argument: {a}')
            sys.exit(1)
        else:
            directory = a

    models = find_models(directory)
    if not models:
        print(f'No models (*.tf) in directory "{directory}"')
        print(f'Usage: python3 play_multi.py [directory] [--episodes N]')
        sys.exit(1)

    print(f'Found {len(models)} model(s) in {directory}/')
    print(f'Evaluation episodes: {n_episodes}')
    print()

    # Create environment ONCE – all models tested under same conditions
    env = turtlesim_env_multi.provide_env()
    env.PI_BY = 3
    env.DETECT_COLLISION = False
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
            print(f'avg.reward={m["avg_reward"]:+.2f}  completed={m["avg_completed"]:.0f}/{m["n_agents"]}  {status}')

    # --------------------------------------------------------
    # Comparison table
    # --------------------------------------------------------
    if results:
        results.sort(key=lambda x: x[1]['avg_reward'], reverse=True)
        print()
        print('=== RANKING (by avg reward) ===')
        print(f'{"#":>3}  {"Model":<60}  {"Reward":>8}  {"+/-":>6}  {"Completed":>10}  {"Status":>12}')
        print('-' * 105)
        for i, (name, m) in enumerate(results, 1):
            status = 'OK' if m['all_agents_done'] else f'timeout({m["steps"]} steps)'
            print(f'{i:3d}  {name:<60}  {m["avg_reward"]:+8.2f}  {m["std_reward"]:6.2f}  '
                  f'{m["avg_completed"]:4.0f}/{m["n_agents"]:<4}  {status:>12}')

        best = results[0]
        print()
        print(f'BEST: {best[0]}')
        print(f'  avg_reward = {best[1]["avg_reward"]:+.2f}')
        print(f'  completed  = {best[1]["avg_completed"]:.0f}/{best[1]["n_agents"]}')
