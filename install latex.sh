#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo rpm --import "https://miktex.org/download/key"
sudo curl -L -o /etc/yum.repos.d/miktex.repo https://miktex.org/download/fedora/40/miktex.repo
sudo dnf install texlive-scheme-full texlive-chktex LaTeXML lyx python3-pylatex miktex && kill -9 $PPID


