mysqldump -uroot -ptoor yourdb | bzip2 > /root/yourdb.sql.bz2 && rsync -hazvP yourdb.sql.bz2 root@192.168.0.254:/root
