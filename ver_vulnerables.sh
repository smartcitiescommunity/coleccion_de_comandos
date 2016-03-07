find /var/www/vhosts/*/httpdocs/ -type f -perm +6000 -ls >vulnerables1.txt && find /var/www/vhosts/*/httpdocs/ -perm -2 -print >vulnerables2.txt
