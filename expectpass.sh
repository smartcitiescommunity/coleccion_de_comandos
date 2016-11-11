#!/usr/bin/expect -f
spawn $your-python-program
expect "login:"
send_tty "$ruser\n"
expect "password:"
send_tty "$passwd-guess\n"
