#!/bin/zsh
set -eu
# two number calculator, accept a third argument "x" or "+" which will decide the output, check that the inputs are integers!

numb1=${1}
numb2=${2}
op=${3}

do_maths () {
    echo "Doing maths beep bop"
    if [[ $op == "x" ]] ; then  
        result=$((numb1*numb2)) 
    elif [[ $op == "+" ]] ; then
        result=$((numb1+numb2))
    else
        echo "is this maths?"
    fi
    echo $numb1 $op $numb2 = $result
}

firstname=${numb2:l}
re='^[+-]?[0-9]+([.][0-9]+)?$' # regular expression, checks what's in a string. 
if ! [[ $numb1 =~ $re ]] || ! [[ $numb2 =~ $re ]] && [[ $op == "+" ]] ;
 then # || is or, && is and, =~ is a match, ; runs commands in a row (can now have then on same row)
   echo $numb1 '<3' $numb2 '=' $numb1$numb2 >&2 
elif ! [[ $numb1 =~ $re ]] && ! [[ $numb2 =~ $re ]] && [[ $op == "x" ]] ;
 then # || is or, && is and, =~ is a match, ; runs commands in a row (can now have then on same row)
   echo $numb1 'x' $numb2 '=' $numb1$firstname >&2 # >&2 redirect error to stderr. 
elif (! [[ $numb1 =~ $re ]] && [[ $numb2 =~ $re ]] && [[ $op == "x" ]])
 then # || is or, && is and, =~ is a match, ; runs commands in a row (can now have then on same row)
 for i in {1..$numb2}
   echo $numb1 
elif (! [[ $numb2 =~ $re ]] && [[ $numb1 =~ $re ]] && [[ $op == "x" ]])
 then # || is or, && is and, =~ is a match, ; runs commands in a row (can now have then on same row)
 for i in {1..$numb1}
   echo $numb2 
else
    do_maths
# if [[ $op == "x" ]] ; then  
#     result=$((numb1*numb2)) 
# elif [[ $op == "+" ]] ; then
#     result=$((numb1+numb2))
# else
#     echo "is this maths?"
fi





