find /var/www/vhosts/*/httpdocs/ -type f -name "*.php*" | xargs grep -l 'mail' | xargs grep -in 'mail' >suspicious.txt
