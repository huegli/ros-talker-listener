#!/bin/bash

echo 127.0.0.1 `hostname` >> /etc/hosts

# Start up the ROS server
cd catkin_ws
source devel/setup.bash
roscore &
sleep 3
avahi-browse -a | grep IPv4
