#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video && kill -9 $PPID

