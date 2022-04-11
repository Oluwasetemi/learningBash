#!/bin/bash

# understanding inout, output and error redirection in bash
# this script should back up the learningBash folder
#code
user=`whoami`
input="/Users/$user/Development/projects/bash/learningBash"
output="/Users/$user/Development/projects/bash/learningBash_$(date +%Y-%m-%d_%H%M%S).tar.gz"

function total_files {
  find $1 -type f | wc -l
}

function total_directories {
  find $1 -type d | wc -l
}

function total_archived_directories {
  tar -tzf $1 | grep  /$ | wc -l
}

function total_archived_files {
  tar -tzf $1 | grep -v /$ | wc -l
}

echo "input: $input"
echo "output: $output"

# standardout >(command)
# standarderror 2>(command)
# standardoutAnderror &>(command)
tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
  echo "Backup of $input completed!"
  echo "Details about the output backup file:"
  ls -l $output
else
  echo "Backup of $input failed!"
fi