find /var/www -type f -name ".php*" | xargs grep -l 'mail' | xargs grep -in 'mail' >resultado.txt
