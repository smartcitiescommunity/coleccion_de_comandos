cd /var/www/ && nice -n 19 clamscan ./ -r -i | grep " FOUND" >> potential_exploits.txt
