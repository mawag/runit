#!/bin/bash

H2G2=42
str='echo "$FOO$H2G2 does not contain: bar"'
str2="echo $H2G2"
bash -c "${str}"
bash -c "${str2}"
