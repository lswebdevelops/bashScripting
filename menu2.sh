#!/bin/bash
clear
while [ "$menuChoise" != 3 ]
do
    echo "Menu"
    echo "1 - List logged in users"
    echo "2 - List Linux kernel version"
    echo "3 - Exit"
    echo
    echo "Please enter your choise: "
    read menuChoise
if [ $menuChoise = 1 ]
then
    clear
    who
    read junk
elif [ $menuChoise = 2 ]
then 
    clear
    uname -r
    read junk
fi
done


