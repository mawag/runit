#!/bin/bash
# 特定输出配置

HIGHLIGHT='\033[1m'
F_BLACK='\033[30;47m'
B_BLACK='\033[40m'
F_RED='\033[31m'
B_RED='\033[41m'
F_GREEN='\033[32m'
B_GREEN='\033[42m'
F_YELLOW='\033[33m'
B_YELLOW='\033[43m'
F_BLUE='\033[34m'
B_BLUE='\033[44m'
F_MAGENTA='\033[35m'
B_MAGENTA='\033[45m'
F_CYAN='\033[36m'
B_CYAN='\033[46m'
F_WHITE='\033[37m'
B_WHITE='\033[47m'

RESET='\033[0m'

cecho()
{
    local time=`date "+%H:%M:%S"`
    local default_app="A App,but No Name"
    local default_msg="No message passed."
    app=${1:-$default_app}
    message=${2:-$default_msg}
    color=${3:-$F_WHITE}

    #echo -e "$HIGHLIGHT$color$time $app\t| $message $RESET"
    printf "$HIGHLIGHT$color%s %-10s|" $time $app
    echo -e "$message $RESET"
    return
}

cecho "App" "Feeling blue..." $F_BLUE
cecho "Runit" "XXXXXXXXXXXXXXXX blue..." $F_CYAN
exit


