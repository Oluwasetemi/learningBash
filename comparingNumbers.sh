#!/bin/bash
# Given two integers,  and , identify whether  or  or .

# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y

read -p "Enter the first number: " x
read -p "Enter the second number: " y

  if (($x < $y)); then
    echo "X is less than Y"
  elif (($x > $y)); then
    echo "X is greater than Y"
  elif (($x == $y)); then
    echo "X is equal to Y"
  fi