#!/bin/bash

sudo apt-get update

cd ~/tello_ros_ws/src
git clone https://github.com/clydemcqueen/tello_ros.git
git clone https://github.com/ptrmu/ros2_shared.git
git clone https://github.com/ptrmu/fiducial_vlam.git

line_to_add="source /opt/ros/foxy/setup.bash"

if ! grep -qF "$line_to_add" ~/.bashrc; then
    echo "$line_to_add" >> ~/.bashrc
    echo "Line added to .bashrc."
else
    echo "Line already exist in .bashrc."
fi