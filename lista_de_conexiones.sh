netstat -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c
