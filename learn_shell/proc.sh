#!/bin/bash

#test

readonly LINE_ZHUSHI='^\s*#.*$'
readonly LINE_PROC='^\s*\w+:\s*.+$'
readonly LINE_ENV="^[A-Za-z]+\w*=(\`.*\`|\".*\"|\'.*\'|\w+)$"
readonly LINE_NONE='^\s*$'

readonly DEFAULT_PROC="Procfile"
readonly DEFAULT_ENV=".env"
readonly DEFAULT_PORT="8080"

readonly APPNAME='^(?<=\s*)\w+(?=:\ .*)$'
readonly RUNLINE='^(?<=\s*\w+:\ +).*$'

function read_procfile(){
	local procfile=${1:-"${DEFAULT_PROC}"}
	local ischeck=$2
	
	echo "Procfile load Start:${procfile}"
	local i=0
	while read line; do
		i++
		if [[ "${line}" =~ ${LINE_ZHUSHI} ]]; then
			${ischeck} && echo "Line ${i} is 注释"
			continue
		fi
		if [[ "${line}" =~ $PROCLINE ]]; then
		  echo "${line}"
		  appname=${line%%\:*}
		  run_command=${line#*\:}
		  echo "----$appname----- and ---$run_command----"
		fi
	done < "${procfile}"
}

readprocfile
