#!/bin/bash

#comment
#code
files="$(ls)"
web_files=`ls public_html`
echo "$files"      # we need the quotes to preserve embedded newlines in $files
echo "$web_files"  # we need the quotes to preserve newlines
X=`expr 3 \* 2 + 4` # expr evaluate arithmatic expressions. man expr for details.
echo "$X"