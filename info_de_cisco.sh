tcpdump -nn -v -i eth0 -s 1500 -c 1 'ether[20:2] == 0x2000'
