#!/bin/bash

LOG_COLOR=(F_CYAN F_MAGENTA F_BLUE F_YELLOW F_GREEN)


for TMP in ${LOG_COLOR[@]} 
do
    echo "${TMP}"
done

ddd=9
echo "${LOG_COLOR[((${ddd}%5))]}"