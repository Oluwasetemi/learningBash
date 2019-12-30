#!/bin/bash

# using getops to create an interactive bash script

# code
while getopts ':a:b:' opt; do
  case "$opt" in
    a)
      echo "a found and its value is $OPTARG"
    ;;
    b)
      echo "b found and its value is $OPTARG"
    ;;
    \?)
      echo "unknown option"
    ;;
  esac
done

# use shift to access more argument
shift $(( OPTIND - 1 ))

# loop thru and display the 'more argument'
for arg in $@; do
  echo "received ARG $arg"
done