#!/bin/bash

#comment
#code
echo $BASH_CMDS
echo $BASH_VERSION
echo $OSTYPE
echo $PATH
echo $PS1
echo $PS2
bash -c "echo hello; echo $BASH_VERSINFO[0]"
