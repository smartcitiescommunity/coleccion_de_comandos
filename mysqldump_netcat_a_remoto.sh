mysqldump -uroot -ptoor yourdb | gzip > /root/yourdb.sql.gz && nc 192.168.0.254 10101 <yourdb.sql.gz
#remote
#nc -l 10101 >yourdb.sql.gz | tar xvf -
