#@source; tar -cf - /path/to/dir | pv | nc -l -p 6666 -q 5; #@target; nc 192.168.1.100 6666 | pv | tar -xf -
