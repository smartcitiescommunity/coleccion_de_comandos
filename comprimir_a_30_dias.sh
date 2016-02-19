find . -type f -name "*" -mtime +10 -print -exec gzip {} \;
