#!/bin/bash

#using the select keyword
#code
select fname in 'name' 'ade';
do
  echo you picked $fname \($REPLY\)
  break;
done
