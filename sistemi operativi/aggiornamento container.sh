#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

sudo docker container stop os2425
sudo docker container rm os2425
sudo docker image pull os2425
sudo docker container run --name os2425 --hostname sistemi-operativi -v dati:/corso -it chmod84/os2425
kill -9 $PPID
