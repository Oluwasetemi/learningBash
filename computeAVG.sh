#!/bin/bash

#Given n  integers, compute their average correct to three decimal places
#code
read -p '>' n
echo $n

# Read n integers
sum=0
for ((i=1; i<=n; i++)); do
    read -p '' num
    sum=$((sum + num))
done

# Calculate average with 3 decimal places
avg=$(echo "scale=3; $sum / $n" | bc -l)
printf "%.3f\n" "$avg"
