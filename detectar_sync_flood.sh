netstat -pant 2> /dev/null | grep SYN_ | awk '{print $5;}' | cut -d: -f1 | sort | uniq -c | sort -n | tail -20
