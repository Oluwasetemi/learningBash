#!/bin/bash

#comment
#code

function f() {
  # echo $1
  if (($1 <= 1)); then
     return 1
  fi
  return f($1-1) * $1;
}

# res=func(5)
printf "%.2f" func $@
# func $1