#!/bin/bash

#test

readonly LINE_ZHUSHI='^\s*#.*$'
readonly LINE_PROC='^\s*\w+:\s*.+$'
readonly LINE_ENV="^[A-Za-z]+\w*=(\`.*\`|\".*\"|\'.*\'|\w+)$"
readonly LINE_NONE='^\s*$'
readonly USE_PORT='^.*\$PORT$'

# readonly DEFAULT_PROC="Procfile"
# readonly DEFAULT_ENV=".env"
# readonly DEFAULT_PORT="8080"

# readonly APPNAME='^(?<=\s*)\w+(?=:\ .*)$'
# readonly RUNLINE='^(?<=\s*\w+:\ +).*$'

# function read_procfile(){
# 	local procfile=${1:-"${DEFAULT_PROC}"}
# 	local ischeck=${2:-false}

# 	echo "Procfile load Start:${procfile}"
# 	${ischeck} && echo "Start Check"
# 	local line_number=0
# 	while read line; do
# 		let line_number++
# 		if [[ "${line}" =~ ${LINE_ZHUSHI} ]]; then
# 			${ischeck} && echo "${procfile} Line ${line_number} is 注释"
# 			continue
# 		elif [[ "${line}" =~ ${LINE_NONE} ]]; then
# 			${ischeck} && echo "${procfile} Line ${line_number} is 空行"
# 			continue
# 		elif [[ "${line}" =~ ${LINE_PROC} ]]; then
# 			${ischeck} && echo "${procfile} Line ${line_number} is Proc" && continue
# 			echo "${line}"
# 			appname=${line%%\:*}
# 			#appname=${line#^\s*}
# 			run_command=${line#*\:}
# 			echo "----$appname----- and ---$run_command----"
# 		else
# 			echo "${procfile} Line ${line_number} is ERROR. Content is |->${line}<-|"
# 		fi
# 	done < "${procfile}"
# }

# read_procfile "$@" true
# echo $1
# cat $1 | while read line
# do
# 	echo $line
# done


# while read -r "\r" myline 
# do
# 	echo "LINE:"$myline
# done < "$1"

# while myline=$(line)
# do 
# 	echo "LINE:"$myline
# done < "$1"
PORT=8080
line='i am $PORT'
if [[ $line =~ $USE_PORT ]]; then
	
	echo "port = $PORT"
	let PORT++
	echo "Port = $PORT"
fi