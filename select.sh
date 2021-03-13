#!/bin/bash

#using the select keyword
#code
select fname in *;
do
  echo you picked $fname \($REPLY\)
  break;
done
