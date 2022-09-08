#!/bin/bash

sudo apt update
sudo apt install -y python3-rosdep python3-pip python3-catkin-tools git
WS=$HOME/catkin_ws/src
mkdir -p $WS
cd $WS
wget https://github.com/aldebaran/libqi-python/releases/download/qi-python-v3.0.0/qi-3.0.0-cp38-cp38-linux_x86_64.whl
python3 -m pip install ./qi*
rm qi-3.0.0*
git clone https://github.com/peppo97/cogrob_pepper_nodes.git 
sudo rosdep init
rosdep update
cd ..
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
echo "Workspace configured in $WS"
