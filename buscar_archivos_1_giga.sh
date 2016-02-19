find / -type f -size +1024M -exec ls -lh {} \; | awk '{ print $5 " " $6$7 ": " $9 }'
