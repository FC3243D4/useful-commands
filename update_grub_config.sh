#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo grub2-mkconfig -o /boot/grub2/grub.cfg && sudo reboot now
