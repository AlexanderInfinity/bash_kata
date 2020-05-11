#!/bin/zsh
set -eu
# two number calculator 

numb1=${1}
numb2=${2}


sum_num=$((numb1+numb2))

echo $numb1 + $numb2 = $sum_num