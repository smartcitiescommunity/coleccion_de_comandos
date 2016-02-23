IPADDR=`ifconfig eth0 | grep -i inet | awk -F: '{print $2}'| awk '{print $1}'`
