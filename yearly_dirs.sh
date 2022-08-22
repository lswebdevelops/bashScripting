#!/bin/bash
clear

echo "Directories will be created from 2009 - 2015"
echo "Enter directory name suffix: "
read dir_suffix

mkdir 20{09,10,11,12,13,14,15}_$dir_suffix

echo

echo "Subdirectories successfully created"
 ls 20*_$dir_suffix