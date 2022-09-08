#!/bin/bash

sudo apt install python3-rosdep
WS=$HOME/catkin_ws/src
mkdir -p $WS
cd $WS
git clone https://github.com/ros-naoqi/naoqi_bridge.git
git clone https://github.com/ros-naoqi/pepper_robot.git
git clone https://github.com/peppo97/cogrob_pepper_nodes.git 
sudo rosdep init
rosdep update
cd ..
rosdep install --from-paths src --ignore-src --rosdistro noetic -r -y
