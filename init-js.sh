#!/bin/bash

#use back script to create and setup a JS project
#code
echo "Initializing JS project at $(pwd)"
git init
npm init -y # create package.json with all the defaults
echo node_modules/ >> .gitignore
mkdir src
touch src/index.js
code . # open src/index.js