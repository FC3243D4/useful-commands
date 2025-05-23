#!/bin/bash

sudo nano /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo sed -i -e 's/"Advanced options for Arch Linux"/"Advanced options for Arch Linux" --class submenu/g' /boot/grub/grub.cfg
