#!/bin/bash

#using case statement in bash
#code

case "$1" in
  a)echo "a matched";;
  b)echo "b matched";;
  c)echo "c matched";;
  d)
    echo "d matched"
  ;;
  *)
    echo "nothing"
  ;;
esac
