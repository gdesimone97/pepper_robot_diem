#!/bin/bash

WS=workspaces
PATH_WS=$HOME/$WS
mkdir -p $PATH_WS
docker run --network=host --volume=$HOME/$WS:/root/$WS --name pepper_ros_cnt -it pepper_ros
