#!/bin/bash

# understanding inout, output and error redirection in bash
# this script should back up the learningBash folder
#code
user=`whoami`
input="/Users/$user/Development/projects/bash/learningBash"
output="/Users/$user/Development/projects/bash/learningBash_$(date +%Y-%m-%d_%H%M%S).tar.gz"

echo "input: $input"
echo "output: $output"

# standardout >(command)
# standarderror 2>(command)
# standardoutAnderror &>(command)
tar -czf $output $input 2> /dev/null

echo "Backup of $input completed! Details about the output backup file:"
ls -l $output