#!/usr/bin/expect -f
# set message [lindex $argv 0]
set timeout -1
spawn ./pushcode.sh
expect "Enter commit message\r"
interact return
expect "Username for 'https://github.com': "
send -- "krishnabose02\r"
expect "Password for 'https://github.com': "
send -- "7407c5694fc06f8252bf7b7fcfd05e374e31b14c\r"
expect eof