echo "
atari-a3c-breakoutdeterministic-lr:
    env:
        BreakoutDeterministic-v4
    run: A3C
    config:
        num_workers: 12
        sample_batch_size: 40
        preprocessor_pref: deepmind
        lr:
            grid_search:
                - 0.0001
                - 0.0005
        num_envs_per_worker: 1
        optimizer:
            grads_per_step: 1000
" > atari-a3c-breakoutdeterministic-lr.yaml
#
wget https://raw.githubusercontent.com/richardwlc/puplic-files/master/ray-dependences.sh
bash ray-dependences.sh
python3 ~/.local/lib/python3.5/site-packages/ray/python/ray/rllib/train.py -f atari-a3c-breakoutdeterministic-lr.yaml
