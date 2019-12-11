#!/bin/bash

#Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.
#One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).

read -p '' side1
read -p '' side2
read -p '' side3

if [ $((side1+side2)) -le "$side2" ]; then
    echo "NOT A TRIANGE"
else
    if [ $side1 -eq $side2 ] && [ $side1 -eq $side3 ]; then
        echo "EQUILATERAL"
    else
        if [ "$side1" -eq "$side2" ] || [ "$side1" -eq "$side3" ] || [ "$side2" -eq "$side3" ]; then
            echo "ISOSCELES"
        else
            echo "SCALENE"
        fi
    fi
fi
