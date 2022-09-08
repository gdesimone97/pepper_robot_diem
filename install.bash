#!/bin/bash

sudo apt update
sudo apt install -y python3-rosdep python3-pip python3-catkin-tools git
WS=$HOME/catkin_ws/src
mkdir -p $WS
cd $WS
git clone https://github.com/peppo97/cogrob_pepper_nodes.git 
sudo rosdep init
rosdep update
cd ..
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
