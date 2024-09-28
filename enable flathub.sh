#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

flatpak remote-add --if-not-exists flathub https:/flathub.org/repo/flathub.flatpakrepo && kill -9 $PPID

