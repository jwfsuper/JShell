#!/usr/bin/expect

spawn ./read_r.sh
expect "Enter number:"
send "32\n"
expect "Enter name:"
send "Lucy\n"
expect eof
