find /some/path/ -type f | grep -vif blacklist | mplayer -shuffle -playlist /dev/fd/3 3<&0 </dev/tty
