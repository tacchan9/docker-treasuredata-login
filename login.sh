#!/bin/bash

USR="XXXXX"
PWD="XXXXX"

echo "connecting"

expect -c "
spawn td -e https://api.treasuredata.com account -f
expect \"Email:\"
send \"${USR}\n\"
expect -re \"Password\"
send \"${PWD}\n\"
expect \"$\"
exit 0
"
