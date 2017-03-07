#!/bin/bash
# This shell script makes directories used in a role and works as expected
# only in the parent directory of the directory where this script exists.
# Usage:
#   ./bin/role.sh "a role name you want to make"
#   If you make a hierarchical structure in the roles, set a role name like hoge/fuga.

expected_dir=$(cd $(dirname $0)/.. && pwd)
executed_dir=$(pwd)
if [[ $executed_dir != $expected_dir ]]; then
  echo "Please use this command in ${expected_dir}"
  exit 1
fi

if [[ $# != 1 ]]; then
  echo -e "Invalid argument.\nPlease pass only a role name."
  exit 2
fi

ansible-galaxy -p roles init $1 || exit 3
rm roles/$1/.travis.yml
for d in templates files; do
  touch roles/$1/$d/.gitkeep
done