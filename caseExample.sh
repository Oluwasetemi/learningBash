#!/bin/bash

#using case statement in bash
#code
echo -n "Enter the name of an animal: "
read ANIMAL
echo -n "The $ANIMAL has "
case $ANIMAL in
  horse | dog | cat) echo -n "four";;
  man | kangaroo| bird) echo -n "two";;
  fish ) echo -n "no";;
  *) echo -n "an unknown number of";;
esac
echo " legs."