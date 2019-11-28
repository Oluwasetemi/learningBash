#!/bin/bash
# Interactive Script for determining Odd or Even Numbers
#
read -p "Enter a number: " number
remainder=$(( $number % 2 ))

if [ $remainder -eq 0 ]; then
   echo "The number $number you entered is an even number"
else
   echo "The number you entered $number is an odd number"
fi