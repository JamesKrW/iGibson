from gibson2.core.physics.robot_locomotors import *
from gibson2.core.simulator import Simulator
from gibson2.core.physics.scene import *
import gibson2
from gibson2.utils.utils import parse_config
from gibson2.envs.base_env import BaseEnv
from gibson2.envs.locomotor_env import *
from time import time
from tf_agents.environments import gym_wrapper
from tf_agents.environments import utils, tf_py_environment, parallel_py_environment
import tensorflow as tf
from gibson2.utils.tf_utils import env_load_fn
import numpy as np
import time


def test_env():
    config_filename = os.path.join(os.path.dirname(gibson2.__file__), '../test/test.yaml')
    nav_env = NavigateEnv(config_file=config_filename, mode='headless')
    for j in range(2):
        nav_env.reset()
        for i in range(300): # 300 steps, 30s world time
            s = time()
            action = nav_env.action_space.sample()
            ts = nav_env.step(action)
            print(ts, 1/(time()-s))
            if ts[2]:
                print("Episode finished after {} timesteps".format(i + 1))
                break


def test_py_env():
    config_filename = os.path.join(os.path.dirname(gibson2.__file__), '../test/test.yaml')
    nav_env = NavigateEnv(config_file=config_filename, mode='headless')
    py_env = gym_wrapper.GymWrapper(
        nav_env,
        discount=1,
        spec_dtype_map=None,
        match_obs_space_dtype=True,
        auto_reset=True,
    )
    print("action spec", py_env.action_spec())
    print("observation spec", py_env.observation_spec())
    utils.validate_py_environment(py_env, episodes=2)


def test_tf_py_env():
    # config_filename = os.path.join(os.path.dirname(gibson2.__file__), '../test/test.yaml')
    # nav_env = NavigateEnv(config_file=config_filename, mode='headless')
    # py_env = gym_wrapper.GymWrapper(
    #     nav_env,
    #     discount=1,
    #     spec_dtype_map=None,
    #     match_obs_space_dtype=True,
    #     auto_reset=True,
    # )
    tf_py_env = [lambda: env_load_fn('', device_idx=i) for i in range(2)]
    tf_py_env = parallel_py_environment.ParallelPyEnvironment(tf_py_env)
    # tf_py_env = env_load_fn('')
    # tf_py_env = tf_py_environment.TFPyEnvironment(tf_py_env)

    # tf_py_env = tf_py_environment.TFPyEnvironment(env_load_fn(''))
    print("action spec", tf_py_env.action_spec())
    print("observation spec", tf_py_env.observation_spec())
    # assert False
    action = tf.constant(np.zeros((2, 2)))
    reset_op = tf_py_env.reset()
    step_op = tf_py_env.step(action)
    with tf.Session() as sess:
        for j in range(10000):
            print(j)
            time_step = sess.run(reset_op)
            for i in range(100):
                 time_step = sess.run(step_op)


from tf_agents.drivers import dynamic_episode_driver
from gibson2.utils.tf_utils import mlp_layers
from gibson2.utils.agents.networks import actor_distribution_network, value_network
from gibson2.utils.agents.agents import ppo_agent
from tf_agents.metrics import tf_metrics
from tf_agents.replay_buffers import tf_uniform_replay_buffer
from tf_agents.utils import common as common_utils


def test_driver():
    encoder_fc_layers = (128, 64)
    conv_layer_params = ((32, (8, 8), 4), (64, (4, 4), 2), (64, (3, 3), 1))
    actor_fc_layers = (128, 64)
    value_fc_layers = (128, 64)
    learning_rate = 1e-4
    collect_episodes_per_iteration = 30
    num_parallel_environments = 1
    replay_buffer_capacity = 1001

    tf_py_env = [lambda: env_load_fn('', device_idx=x) for x in range(num_parallel_environments)]
    tf_py_env = parallel_py_environment.ParallelPyEnvironment(tf_py_env, blocking=True)
    tf_py_env = tf_py_environment.TFPyEnvironment(tf_py_env)
    print("action spec", tf_py_env.action_spec())
    print("observation spec", tf_py_env.observation_spec())

    optimizer = tf.compat.v1.train.AdamOptimizer(learning_rate=learning_rate)

    preprocessing_layers = {
        'sensor': tf.keras.Sequential(
            mlp_layers(conv_layer_params=None,
                       fc_layer_params=encoder_fc_layers,
                       kernel_initializer=tf.compat.v1.keras.initializers.glorot_uniform(),
                       dtype=tf.float32,
                       name='EncoderNetwork/sensor')),
        'rgb': tf.keras.Sequential(
            mlp_layers(conv_layer_params=conv_layer_params,
                       fc_layer_params=None,
                       kernel_initializer=tf.compat.v1.keras.initializers.glorot_uniform(),
                       pooling=True,
                       dtype=tf.float32,
                       name='EncoderNetwork/rgb')),
        'depth': tf.keras.Sequential(
            mlp_layers(conv_layer_params=conv_layer_params,
                       fc_layer_params=None,
                       kernel_initializer=tf.compat.v1.keras.initializers.glorot_uniform(),
                       pooling=True,
                       dtype=tf.float32,
                       name='EncoderNetwork/depth')),
    }

    preprocessing_combiner = tf.keras.layers.Concatenate(axis=-1)


    actor_net = actor_distribution_network.ActorDistributionNetwork(
        tf_py_env.observation_spec(),
        tf_py_env.action_spec(),
        preprocessing_layers=preprocessing_layers,
        preprocessing_combiner=preprocessing_combiner,
        conv_layer_params=None,
        fc_layer_params=actor_fc_layers,
        kernel_initializer=tf.compat.v1.keras.initializers.glorot_uniform(),
    )
    value_net = value_network.ValueNetwork(
        tf_py_env.observation_spec(),
        preprocessing_layers=preprocessing_layers,
        preprocessing_combiner=preprocessing_combiner,
        conv_layer_params=None,
        fc_layer_params=value_fc_layers,
        kernel_initializer=tf.compat.v1.keras.initializers.glorot_uniform()
    )

    tf_agent = ppo_agent.PPOAgent(
        tf_py_env.time_step_spec(),
        tf_py_env.action_spec(),
        optimizer,
        actor_net=actor_net,
        value_net=value_net,
        num_epochs=25,
        debug_summaries=False,
        summarize_grads_and_vars=False,
        normalize_observations=True)

    collect_policy = tf_agent.collect_policy()

    replay_buffer = tf_uniform_replay_buffer.TFUniformReplayBuffer(
        tf_agent.collect_data_spec(),
        batch_size=num_parallel_environments,
        max_length=replay_buffer_capacity)


    # TODO(sguada): Reenable metrics when ready for batch data.
    environment_steps_metric = tf_metrics.EnvironmentSteps()
    environment_steps_metric.build()
    step_metrics = [
        tf_metrics.NumberOfEpisodes(),
        environment_steps_metric,
    ]
    train_metrics = step_metrics + [
        tf_metrics.AverageReturnMetric(),
        tf_metrics.AverageEpisodeLengthMetric(),
    ]

    # Add to replay buffer and other agent specific observers.
    replay_buffer_observer = [replay_buffer.add_batch]

    collect_op = dynamic_episode_driver.DynamicEpisodeDriver(
        tf_py_env,
        collect_policy,
        observers=replay_buffer_observer + train_metrics,
        num_episodes=collect_episodes_per_iteration).run()
    init_agent_op = tf_agent.initialize()

    with tf.compat.v1.Session() as sess:
        common_utils.initialize_uninitialized_variables(sess)

        sess.run(init_agent_op)  # print('outputs', len(outputs), outputs[0])

        # tf.contrib.summary.initialize(session=sess)
        for i in range(100000):
            print(i)
            print('-------------------------------')
            start = time.time()
            sess.run(collect_op)
            print(time.time() - start)


test_driver()