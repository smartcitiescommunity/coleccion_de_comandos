last  | grep -v "^$" | awk '{ print $1 }' | sort -nr | uniq -c
