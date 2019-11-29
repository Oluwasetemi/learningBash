#!/bin/bash

#We provide you with expressions containing +,-,*,^, / and parenthesis. None of the numbers in the expression involved will exceed 999.
#Your task is to evaluate the expression and display the correct output rounding upto  decimal places
read -p '' exp

RES="$((expr $exp))"

echo "$RES"