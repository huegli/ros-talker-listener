#!/bin/bash

echo 127.0.0.1 `hostname` >> /etc/hosts

# Start up the ROS server
roscore &
sleep 3
avahi-browse -a | grep IPv4
