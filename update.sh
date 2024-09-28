#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo dnf update && sudo grub2-mkconfig -o /boot/grub2/grub.cfg && kill -9 $PPID

