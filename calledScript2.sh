#!/bin/bash
# clear

# echo "Menu"
# echo "1 - List logged in users"
# echo "2 - List Linux kernel version"

# echo 

# echo "Please enter your choise: "
# read menuChoise
# if [ $menuChoise = 1 ]
# then
#     clear
#     who
# elif [ $menuChoise = 2 ]
# then 
#     clear
#     uname -r
# else
#     exit
# fi


echo "this is teh called script"

 cd /Nonexisting_Dir
 if [ $? -eq 0 ]
 then
    echo "No problem"
else
    echo "Houston, we have a problem"
fi

