XXUSER=root && XXHOST=192.168.0.254 && XXPATHFILE=/var/www/.htaccess && XXPATHLOCAL=/var/www/html/.htaccess && rsync -rptlv -e ssh XXUSER@XXHOST:$XXPATHFILE $XXPATHLOCAL
