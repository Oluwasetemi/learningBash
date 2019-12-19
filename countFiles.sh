#!/bin/bash

# count the files in a directory with fallback to $PWD
dir=${1:-$PWD}
find "$dir" -type f -maxdepth 1 | wc -l
