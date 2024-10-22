#!/bin/bash
test "$IN_TERM" || {
    export IN_TERM=1
    konsole --hold -e "$0"
    exit 0
} && true

docker container start os2425
docker container exec -it os2425 /bin/bash && kill -9 $PPID
