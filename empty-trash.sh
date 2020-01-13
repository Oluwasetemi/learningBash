#!/bin/bash

# create a bash shell script to empty the trash every monday and set up launchctrl job for it
# code

osascript -e 'tell app "Finder" to empty'
