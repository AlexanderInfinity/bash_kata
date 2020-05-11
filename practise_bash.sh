### Online Thing ####

#!/bin/zsh
# set -eu
# timeout=120
# retry_delay=1
# query_with_timeout () {
# 	echo "Triggering with timeout"
# 	curl --retry $timeout --retry-connrefused --retry-delay $retry_delay 'google.com' > /dev/null
# }()
# print_were_online () {
# 	echo "we're online!"
# }
# query_with_timeout && print_were_online

### Bash Arguements ###
 # in command link ./practise_bash.sh "Alex"
# name=${1}
# bad_name=${2}

# echo "Hi $name"
# echo "Get lost $bad_name"

### Calucilator (broken) ###

num1=${1}
num2=${2}
sum=$num1+num2
echo "$num1 + $num2 = $sum"

### enviornment variables ###

DB_HOST="whatever" 
#alters this only for when this is called, not the one in the zsh config
echo "Home = $HOME"
echo "DB_HOST = $DB_HOST"