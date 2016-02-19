for ip in $(seq 1 25); do ping -c 1 192.168.0.$ip>/dev/null; [ $? -eq 0 ] && echo "192.168.0.$ip UP" || : ; done
