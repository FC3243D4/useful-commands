#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo systemctl start docker
sudo sudo systemctl stop firewalld && kill -9 $PPID