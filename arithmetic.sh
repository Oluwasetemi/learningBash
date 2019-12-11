#!/bin/bash

#We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed 999.
#Your task is to evaluate the expression and display the correct output rounding upto 3 decimal places
# bc or expr
read -p '' exp

a=`echo $exp | bc -l`
a_rounded=`printf "%.3f" $a`

echo "$a_rounded"