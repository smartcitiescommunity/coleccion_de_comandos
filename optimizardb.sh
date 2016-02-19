mysql -u uname dbname -e "show tables" | grep -v Tables_in | grep -v "+" | gawk '{print "optimize table " $1 ";"}' | mysql -u uname dbname
