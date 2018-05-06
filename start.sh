#!/bin/bash

echo 127.0.0.1 `hostname` >> /etc/hosts

# Start up the ROS server
source /opt/ros/kinetic/setup.bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/huegli/dotfiles
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/dir_colors .dir_colors
ln -s dotfiles/tmux.conf .tmux.conf

roscore &
# sleep 3
# avahi-browse -a | grep IPv4
