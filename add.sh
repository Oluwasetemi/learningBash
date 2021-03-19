#!/bin/bash
# x=12
echo -n "Enter the first value: "
read x
echo -n "Enter the second value: "
read y
# y=5
answer=$(echo $(( x + y )))
echo "The sum of $x and $y is : $answer"

x=5
y=3
answer=$(echo $(( x % y )))
echo "$x mod $y leaves a remainder of : $answer"

echo $0
echo $1, $2