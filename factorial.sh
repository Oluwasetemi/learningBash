#!/bin/bash

# write a function to calculate factorial
#code

function factorial() {
  local num=$1
  local fact=1
  while [ $num -gt 1 ]
  do
    fact=$((fact * num))
    num=$((num - 1))
  done
  echo $fact
}

# using recursion in bash
function factorial_() {
  local num=$1
  if [ $num -gt 1 ]
  then
    echo $((num * factorial_recursion(num - 1)))
  else
    echo 1
  fi
}

factorial_recursion()
{
  if (( $1 <= 1 )); then
    echo 1
  else
    last=$(factorial_recursion $(( $1 - 1 )))
    echo $(( $1 * last ))
  fi
}

factorial_recursion 5

function f() {
  # echo $1
  if (($1 <= 1)); then
     echo 1
  else
    last=$(f $(( $1 - 1 )))
    echo $(( last * $1));
  fi
}

echo 'here is the factorial of 5'
f 5

res=($(factorial $1))
res2=($(factorial_recursion $1))
echo $res
echo $res2
printf "%.2f" f 5
# f $1