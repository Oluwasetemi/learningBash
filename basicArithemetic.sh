#!/bin/bash
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

sum=$(( num1 + num2 ))
echo "$sum"
sub=$(( num1 - num2 ))
echo "$sub"
mul=$(( num1 * num2 ))
echo "$mul"
div=$(( num1 / num2 ))
echo "$div"
