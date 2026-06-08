import os
import glob
import numpy as np
from collections import deque
from tensorflow import keras
from tensorflow.keras.models import load_model, clone_model
import turtlesim_env_multi
from dqn_multi import DqnMulti

def find_last_model(directory='models', prefix='X6-c20c20c20d64-M-lr001'):
    if not os.path.isdir(directory):
        return None
    pattern = os.path.join(directory, f'{prefix}*-*.tf')
    files = glob.glob(pattern)
    if not files:
        return None
    def episode_number(m):
        parts = os.path.basename(m).replace('.tf', '').split('-')
        return int(parts[-1])
    files.sort(key=episode_number)
    return files[-1]


if __name__ == '__main__':
    env = turtlesim_env_multi.provide_env()
    env.PI_BY = 3
    env.DETECT_COLLISION = False
    env.setup('scenariusz.csv')
    agents = env.reset()
    model_path = find_last_model()
    print(f'Found model: {model_path}')
    dqnm = DqnMulti(env, id_prefix='X6-transfer-A')
    dqnm.model = load_model(model_path)
    print(f'Loaded model – epistart: {os.path.basename(model_path)}')

    env.DETECT_COLLISION = True
    print(f'Collision detection: {env.DETECT_COLLISION}')

    dqnm.EPS_INIT = 0.2
    dqnm.EPS_DECAY = 0.995
    dqnm.EPS_MIN = 0.02
    dqnm.EPISODES_MAX = 2000

    dqnm.target_model = clone_model(dqnm.model)
    dqnm.target_model.set_weights(dqnm.model.get_weights())
    dqnm.replay_memory = deque(maxlen=dqnm.REPLAY_MEM_SIZE_MAX)

    print()
    print('=== STARTING FINE-TUNING (knowledge transfer) ===')
    print(f'  Episodes:         {dqnm.EPISODES_MAX}')
    print(f'  Epsilon init:     {dqnm.EPS_INIT}')
    print(f'  Epsilon decay:    {dqnm.EPS_DECAY}')
    print(f'  Collisions:       {env.DETECT_COLLISION}')
    print(f'  Start file:       {os.path.basename(model_path)}')
    print()

    dqnm.train_main(save_model=True, save_state=True)
