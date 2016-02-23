mkfifo /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -a from.log > /tmp/fifo
#para probar web >mkfifo /tmp/fifo ; while :; do cat /tmp/fifo | nc -l 80 | tee -a to.log | nc localhost 8000 | tee -a from.log > /tmp/fifo; done
