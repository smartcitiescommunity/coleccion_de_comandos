tail -f /var/squid/logs/access.log | perl -pe 's/(\d+)/localtime($1)/e'
