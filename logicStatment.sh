#!/bin/bash
clear
AGE=30
echo "your age is: $AGE"
[ $AGE -gt 65 ] && echo "Senior"
AGE=66
echo "your new age is: $AGE"

[ $AGE -gt 65 ] && echo "You are a Senior"


