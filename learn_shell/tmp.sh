#!/bin/bash

export "H2G2=42"
# echo $H2G2
#eval "H2G2=42"
str='echo "$FOO$H2G2 does not contain: bar"'
# str2="
str=$(eval echo "$str")
echo $str
# let H2G2++
# echo "121212 $H2G2"
# sleep 10
# echo "over"
# bash -c "${str}"
# bash -c "${str2}"
# line_n=`grep -c "" $1`
# echo $line_n

# procfile=$1
# line_number=0
# line_n=`grep -c "" ${procfile}`
# while read line; do
# 	let line_number++
# done < "${procfile}"
# if [[ ${line_number} -ne ${line_n} ]]; then
# 	echo "666666666666"
# fi

#bash -c "ls" > >(cat) 2>&1

# bash -c "ls" > >(
#     while read line; do
# 		echo "file is $line"
# 	done)

# cat <(ls)

