#!/bin/bash
# Read in one character from the user (this may be 'Y', 'y', 'N', 'n'). If the character is 'Y' or 'y' display "YES". If the character is 'N' or 'n' display "NO". No other character will be provided as input.


read -p '' cond

if [ $cond = 'Y' ] || [ $cond = 'y' ]; then
    echo "YES"
elif [ $cond = "N" ] || [ $cond = 'n' ]; then
    echo "NO"
fi
