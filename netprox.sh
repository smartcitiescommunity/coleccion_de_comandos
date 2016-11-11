mkfifo fifo; while true ; do      echo "Waiting for new event";     nc -l 8080 < fifo | tee -a proxy.txt /dev/stderr | nc 192.168.0.1 80 > fifo ;  done
