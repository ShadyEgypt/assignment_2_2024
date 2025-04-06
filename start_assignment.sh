#!/bin/bash

# Reset Python path to avoid conflicts
export PYTHONPATH=/home/shady/Documents/unige_robotics_msc/0x02_second_year_2nd_semster/rt2/rt_ros_ws/devel/lib/python3/dist-packages:/opt/ros/noetic/lib/python3/dist-packages:/usr/lib/python3/dist-packages

L_PATH=/home/shady/Documents/unige_robotics_msc/0x02_second_year_2nd_semster/rt2/rt_ros_ws
SIM_PATH=${L_PATH}/devel/setup.bash

# Source ROS Noetic
source /opt/ros/noetic/setup.bash
. /usr/share/gazebo/setup.sh

# Source simulation workspace
source ${SIM_PATH}

# Set Gazebo paths
export GAZEBO_MODEL_PATH=${L_PATH}/src/assignment_2_2024/urdf:${L_PATH}/src:${L_PATH}/src/assignment_2_2024
export GAZEBO_PLUGIN_PATH=${L_PATH}/devel/lib:$GAZEBO_PLUGIN_PATH

# Launch
roslaunch assignment_2_2024 assignment1.launch
