$if [[ "$(sleep 1 | telnet -c <host> <port> 2>&1 | grep '^SSH')" == SSH* ]]; then <command when up>; else <command when down>; fi;
