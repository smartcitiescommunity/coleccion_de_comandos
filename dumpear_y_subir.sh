mysqldump -uUserName -pPassword tudb | ssh root@server.com "mysql -uUserName -pPassword -h mysql.server.com YourDBName"
