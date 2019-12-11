#!/bin/bash

#comment
#code

for X in red green blue
do
	echo $X
done

colour1="red"
colour2="light blue"
colour3="dark green"
for X in "$colour1" $colour2" $colour3"
do
	echo $X
done