hexdump -n6 -e '/1 ":%02X"' /dev/random|sed s/^://g
