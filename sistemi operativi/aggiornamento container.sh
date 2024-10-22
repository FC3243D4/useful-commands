#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

docker container stop os2425
docker container rm os2425
docker image pull chmod84/os2425
docker container run --name os2425 --hostname sistemi-operativi -v dati:/home/corso -it chmod84/os2425
kill -9 $PPID
