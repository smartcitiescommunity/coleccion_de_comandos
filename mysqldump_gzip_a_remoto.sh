mysqldump -uroot -ptoor yourdb | gzip > /root/yourdb.sql.gz && rsync -hazvP yourdb.sql.gz root@192.168.0.254:/root
