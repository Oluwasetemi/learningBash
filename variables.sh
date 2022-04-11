#!/bin/bash

# Variables
# code

read -p "Enter the file prefix: " FILE_PREFIX


DESTINATION=$1

if [ -z "$DESTINATION" ]; then
  echo "No destination specified, tmp is used"
  DESTINATION=/tmp
else
  echo "Destination is $DESTINATION"
fi

mkdir -p $DESTINATION
cd $DESTINATION

# create new files
touch ${FILE_PREFIX}{1..10}.txt

echo "Done"
