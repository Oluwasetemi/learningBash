#!/bin/bash

#Given n  integers, compute their average correct to three decimal places
#code
read -p '>' n
set sum = 0
for x in {1..10}; do
    ((sum += x ))
done
set avg = 0
avg = $((sum / 10))
printf "%.2f\n" $sum
