#!/usr/bin/expect -f
set message [lindex $argv 0]
set timeout -1
spawn ./pushcode.sh
expect "Your commit message\r"
send -- "$message\r"
expect -exact "$message\r
# Username for 'https://github.com': \r"
send -- "krishnabose02\r"
expect -exact "krishnabose02\r
Password for 'https://github.com': "
send -- "7407c5694fc06f8252bf7b7fcfd05e374e31b14c\r"
# expect eof

# expect -exact "Your commit message\r
# "
# send -- "$message\r"
# expect -exact "$message\r
# Username for 'https://github.com': "
# send -- "krishnabose02\r"
# # expect -exact "krishnabose02\r
# Password for 'https://krishnabose02@github.com': "
# send -- "passwordss\r"
expect eof
