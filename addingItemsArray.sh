#!/bin/bash
clear
array=( 5 4 3 2 1 0 )
sum="$((${array[@]/%/+}0))"
echo "Total: $sum"
#shown just the last three number:
echo "${array[@]: 3:5}"

#shown just the firs two number:
echo "${array[@]: 0:2}"
