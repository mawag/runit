#!/bin/bash

LOG_COLOR=(F_CYAN F_MAGENTA F_BLUE F_YELLOW F_GREEN)


for TMP in ${LOG_COLOR[@]} 
do
    echo "${TMP}"
done

ddd=8
let num=ddd%5
echo "${LOG_COLOR[${let ddd%5}]}"