#! /bin/bash
sudo apt-get update
sudo apt-get install python3-pip
cd ~/.local/lib/python3.5/site-packages
if [ -e ray ]
then
    cd ray/
else
    git clone https://github.com/ray-project/ray.git
    cd ray/
fi
