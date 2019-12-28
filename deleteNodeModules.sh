#!/bin/bash

# delete node_modules folder

find $1 -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
# limit to node_modules that have not be active for 30days
# find . -name "node_modules" -type d -prune -print -mtime +30 | xargs du -chs
