#!/bin/bash

# check for unused npm dependencies in a project using require, should try to implement with `import`
#code

for dep in $(jq -r '.dependencies | keys | .[]' package.json); do
    if ! grep "require\(.*$dep.*\)" -Rq --exclude-dir="node_modules" .; then
        echo "You can probably remove $dep"
    elif grep "from\".*$dep.*\"" -Rq --exclude-dir="node_modules" .; then
        echo "You can probably remove $dep"
    else
        echo "No dependecies needs to be removed"
    fi
done
# ✅ TESTED
