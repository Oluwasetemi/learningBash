#!/bin/bash

# comment
# code
NUM_TO_GUESS=$(( RANDOM % 10 + 1 ))
GUESSED_NUM=0

echo "Guess a number between 1 and 10"

while [ $GUESSED_NUM -ne $NUM_TO_GUESS ]; do
  read -p "guess a number " GUESSED_NUM
  if [ $GUESSED_NUM -lt $NUM_TO_GUESS ]; then
    echo "Too low"
  elif [ $GUESSED_NUM -gt $NUM_TO_GUESS ]; then
    echo "Too high"
  else
    echo "You guessed it!"
  fi
done