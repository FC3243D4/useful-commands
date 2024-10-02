#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo sudo systemctl start firewalld && kill -9 $PPID