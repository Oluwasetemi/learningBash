#!/bin/bash

# using case statement in bash
# code

case "$1" in
  *.tar|*.tgz|*.tar.gz)
    tar -xzvf "$1"
  ;;
  *.gz)
    gunzip -k "$1"
  ;;
  *.zip)
    unzip -v "$1"
  ;;
  *)
    echo "cannot extract $1"
    exit 1
  ;;
esac

✅tested