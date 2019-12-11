#!/bin/bash

read -p X= X
if [ -n "$X" ]; then 	# -n tests to see if the argument is non empty
	echo "the variable X is not the empty string"
else
    echo "the variable X worked other way"
fi