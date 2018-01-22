#!/bin/bash

readonly ENVFILE_CHECK="^[A-Za-z]+\w*=(\`.*\`|\".*\"|\'.*\'|\w+)$"
readonly ZHUSHI='^\s*#.*$'
readonly NONELINE='^\s*$'

function readenv(){
	local envfile=${1:-"./.env"}
	echo "envfile load Start:${envfile}"
	i=0
	while read line; do
		let i++
		if [[ "${line}" =~ ${ZHUSHI} ]]; then
			echo "Line ${i} is 注释"
			continue
		elif [[ "${line}" =~ ${NONELINE} ]]; then
			echo "Line ${i} is 空行"
			continue
		elif [[ "${line}" =~ ${ENVFILE_CHECK} ]]; then
			echo "Line ${i} is ${line}"
		else
			echo "ERROR line ${i}: ${line}"
			exit 1
		fi
		
	done < "${envfile}"
}

readenv "$1"