#!/bin/bash
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

sum=$(( num1 + num2 ))
# echo "$sum"
echo "The sum of $num1 and $num2 is : $sum"
sub=$(( num1 - num2 ))
# echo "$sub"
echo "The sub of $num1 and $num2 is : $sub"
mul=$(( num1 * num2 ))
# echo "$mul"
echo "The mul of $num1 and $num2 is : $mul"
div=$(( num1 / num2 ))
# echo "$div"
echo "The div of $num1 and $num2 is : $div"
