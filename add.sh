#!/bin/bash
x=12
y=5
answer=$(echo $(( x + y )))
echo "The sum of $x and $y is : $answer"

x=5
y=3
answer=$(echo $(( x % y )))
echo "$x mod $y leaves a remainder of : $answer"