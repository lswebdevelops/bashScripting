#!/bin/bash
clear
arr=(Luciano Adriano Roger Lucas Andreas)
#  many ways to print an array
# echo ${arr[@]}	
# echo ${arr[*]}	
# echo ${arr[@]:0}	
# echo ${arr[*]:0}	
echo " Printing the names of an array:"

for i in ${arr[@]}
do

echo "$i" 
done

echo " Printing third name: ${arr[2]}"

#  showing the length of an array:
echo "The array's length: ${#arr[@]}"


#compating two numbers
num1=2
num2=3

sum=$(($num1 + $num2))
echo "The result of $num1 + $num2 is : $sum"



if [ $num1 -eq $num2 ]
        then
            echo " $num1 is igual to $num2"
    
    else
           
            echo " $num1 is differente of $num2"
fi



#prompting the user to type number: 
echo "Type a number: "
read number1
echo "Type another number: "
read number2

if [ $number1 -eq $number2 ]
        then
            echo " $num1 is igual to $number2"
    elif [ $number1 -gt $number2 ]
        then    
            echo " $number1 is greater than $number2"
    else
           
            echo " $number1 is less than $number2"
fi

