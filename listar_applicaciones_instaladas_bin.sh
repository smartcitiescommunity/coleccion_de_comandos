ls -1 /bin | xargs -l1 whatis 2>/dev/null | grep -v "nothing appropriate"
