import csv
import sys
import numpy as np
from tensorflow.keras.models import load_model
import turtlesim_env_multi
from dqn_multi import DqnMulti


def main():
    if len(sys.argv) < 2:
        print('Usage: python3 visualize.py <model_path> [options]')
        print('Options:')
        print('  --episodes N     episodes to run (default: 1)')
        print('  --max-steps N    max steps per episode (default: 200)')
        print('  --scenario FILE  scenario CSV file (default: scenariusz.csv)')
        sys.exit(1)

    model_path = sys.argv[1]
    n_episodes = 1
    max_steps = 200
    scenario = 'scenariusz.csv'

    args = sys.argv[2:]
    while args:
        a = args.pop(0)
        if a == '--episodes' and args:
            n_episodes = int(args.pop(0))
        elif a == '--max-steps' and args:
            max_steps = int(args.pop(0))
        elif a == '--scenario' and args:
            scenario = args.pop(0)
        else:
            print(f'Unknown argument: {a}')
            sys.exit(1)

    # --- setup environment ---
    env = turtlesim_env_multi.provide_env()
    env.PI_BY = 3
    env.DETECT_COLLISION = True
    env.DRAW_TRAJECTORIES = True
    env.MAX_STEPS = max_steps
    env.setup(scenario)

    # --- load model ---
    dqn = DqnMulti(env, 'eval')
    try:
        dqn.model = load_model(model_path)
    except Exception as e:
        print(f'Failed to load model: {e}')
        sys.exit(1)

    model_name = model_path.rstrip('/').split('/')[-1]
    print(f'Model: {model_name}')
    print(f'Scenario: {scenario}')
    print(f'Episodes: {n_episodes}  Max steps: {max_steps}')
    print('Drawing trajectories (colored by agent) on turtlesim...')
    print()

    csv_path = f'trajectories_{model_name}.csv'
    with open(csv_path, 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow(['episode', 'turtle', 'step', 'x', 'y'])


    for ep in range(n_episodes):
        env.reset(sections='random')
        current = {t: a.map for t, a in env.agents.items()}
        last = {t: [m.copy() for m in current[t]] for t in env.agents}
        active = set(env.agents.keys())
        n_agents = len(env.agents)

        for step in range(env.MAX_STEPS):
            controls = {}
            for tname in active:
                q = dqn.decision(dqn.model, last[tname], current[tname])
                controls[tname] = np.argmax(q)

            actions = {t: dqn.ctl2act(c) for t, c in controls.items()}
            results = env.step(actions)

            done_this_step = []
            for tname, (new_state, reward, done) in results.items():
                last[tname] = current[tname]
                current[tname] = new_state
                if done:
                    done_this_step.append(tname)

            for tname in done_this_step:
                active.remove(tname)

            if not active:
                break

        goals = sum(1 for t in env.agents.values()
                    if hasattr(t, 'fd') and t.fd < 0.5)
        print(f'Episode {ep+1}: {step+1} steps, '
              f'{goals}/{n_agents} reached goal, '
              f'{len(active)} timed out')

        with open(csv_path, 'a', newline='') as f:
            w = csv.writer(f)
            for tname, agent in env.agents.items():
                if not hasattr(agent, 'trajectory'):
                    continue
                for s, (x, y) in enumerate(agent.trajectory):
                    w.writerow([ep + 1, tname, s, round(x, 4), round(y, 4)])

        env.draw_trajectories(csv_path, episode=ep + 1)

    print(f'Trajectories saved to {csv_path}')


if __name__ == '__main__':
    main()
