#!/bin/bash

# comment
# code
names=('sola' 'tola' 'tola2' 'tola3')

echo My name is ${names[0]}
echo My second name is ${names[1]}

for i in ${names[*]}; do
  echo name: $i
done

echo The length of the array is ${#names[*]}