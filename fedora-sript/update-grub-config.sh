#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

grub-customizer
sudo grub-mkconfig -o /boot/grub/grub2.cfg
sudo sed -i -e "s/'UEFI Firmware Settings'/'BIOS' --class bios/" "/boot/grub2/grub.cfg"
sudo nano /boot/grub2/grub.cfg
kill -9 $PPID
