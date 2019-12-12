temp=$(mktemp -d)
git clone --branch $1 $PWD $temp
echo "branch $1 cloned to $temp"
# run some tasks, tests, etc