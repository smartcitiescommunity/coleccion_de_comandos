while [ $(( $(date +%s) - $(stat -c %Y FILENAME) )) -lt 10 ]; do sleep 1; done; echo DONE
