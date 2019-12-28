#!/bin/bash

# list the node_modules folder in a giver directory

find $1 -name "node_modules" -type d -prune -print | xargs du -chs
