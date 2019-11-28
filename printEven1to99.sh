#!/bin/bash
# Print Even between 1 - 99
echo "This will print 1 to 99"
for i in {1..99}; do
  if [ $(($i % 2)) -eq 0 ]; then
    echo "The number $i you entered is an even number"
  else
    echo "The number you entered $i is an odd number"
  fi
done