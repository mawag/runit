#!/bin/bash


stringZ='   #a#bcABC123ABCabc'
zhushi='^\s*\#.*$'

# if [[ "$stringZ" =~ ^\s*#.*$ ]]; then
#   echo "continue"
# fi


if [[ "$stringZ" =~ $zhushi ]]; then
  echo "continue"
fi
