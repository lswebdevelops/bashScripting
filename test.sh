#!/bin/bash
clear
until [ "$menuChoise" = 3 ]
do
    echo "Menu"
    echo "1 - Test file existence"
    echo "2 - Test file write access"
    echo "3 - Exit"
    echo
    echo "Please enter your choise: "
    read menuChoise
if [ $menuChoise = 1 ]
then
    echo "Enter filename: "
    read filename
    if [ -e $filename ]
    then
        echo "$filename does exist."
    else
        echo "$filename does NOT exist."
    fi
    read junk
    
elif [ $menuChoise = 2 ]
then 
 
  echo "Enter filename: "
    read filename
    if test -w $filename
    then
        echo "$filename is writable"
    else
        echo "$filename does NOT writable"
    fi
    read junk
fi
done


