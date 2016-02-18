XUSER=root && XHOST=192.168.0.254 && XCOMMAND="ps aux | grep httpd | wc -l" && ssh $XUSER@$XHOST $XCOMMAND
