#! /bin/bash
sudo apt-get update
sudo apt-get install -y libxrender-dev libsm6 libxext6 zlib1g-dev libsnappy-dev python3-pip python3-dev
sudo apt-get install -y git cmake pkg-config build-essential autoconf curl libtool unzip flex bison python
pip3 install cmake cython tensorflow gym opencv-python scipy lz4
pip3 install gym[atari]
cd ~/.local/lib/python3.5/site-packages
if [ -e ray ]
then
    cd ray/
else
    git clone https://github.com/ray-project/ray.git
    cd ray/
fi
# 08/25
git checkout dbba7f2a53f45ea80321bca7c99492f44efd75f7
cd python
pip3 install -e . --verbose

echo "export OMP_NUM_THREADS=1" >> ~/.bashrc
