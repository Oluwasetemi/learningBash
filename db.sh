#!/bin/bash

# comment
# code

db_set() {
  echo "$1,$2" >> database
}

db_get() {
  grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}

db_set 1 "I met mary on 10/08/2025"
db_set 2 "I met john on 10/08/2025"

db_set 123456 '{"name":"London","attractions":["Big Ben","London Eye"]}'
db_set 42 '{"name":"San Francisco","attractions":["Golden Gate Bridge"]}'
db_set 42 '{"name":"San Francisco","attractions":["Walt Disney World"]}'

echo "I met mary on $(db_get 1)"
echo "I met john on $(db_get 2)"

cat database
