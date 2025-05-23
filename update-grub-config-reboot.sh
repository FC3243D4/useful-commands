#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

grub-customizer
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo sed -i -e "s/'UEFI Firmware Settings'/'BIOS' --class uefi-firmware/" "/boot/grub2/grub.cfg"
sudo nano /boot/grub2/grub.cfg
sudo reboot now
