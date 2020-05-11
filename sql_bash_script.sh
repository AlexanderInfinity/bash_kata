#!/bin/zsh
set -eu

# Script to open SQL and enter password and username
user=${1}
if user=="alex"
Then
    DB_HOST="data-academy-db.cqohmuwgawul.eu-west-1.rds.amazonaws.com" 
    DB_USER="alex" 
    DB_PW="iw-alexander-123" 
    DB_NAME="alex"
fi

mysql -u $DB_NAME -p$DB_PW -h $DB_HOST

