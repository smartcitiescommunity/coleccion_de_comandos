#!/bin/bash
sudo groupadd ftpgroup
sudo useradd -g ftpgroup -d /dev/null -s /etc ftpuser
sudo mkdir /home/ftpusers
read -p "usuario ftp no usar espacio o caracteres o simbolos" nuevousuario
sudo mkdir /home/ftpusers/$nuevousuario
sudo pure-pw useradd $nuevousuario -u ftpuser -d /home/ftpusers/$nuevousuario
sudo pure-pw mkdb
sudo ln -s /etc/pure-ftpd/pureftpd.passwd /etc/pureftpd.passwd
sudo ln -s /etc/pure-ftpd/pureftpd.pdb /etc/pureftpd.pdb
sudo ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/PureDB
sudo usermod -u 1021 -p -U ftpuser
sudo groupmod -g 1022 ftpgroup
sudo chown -hR ftpuser:ftpgroup /home/ftpusers/
sudo apt-get install openssl
sudo echo 2 > /etc/pure-ftpd/conf/TLS
sudo echo 1 > /etc/pure-ftpd/conf/TLS
sudo mkdir -p /etc/ssl/private/
sudo openssl req -x509 -nodes -days 7300 -newkey rsa:2048 -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem
sudo chmod 600 /etc/ssl/private/pure-ftpd.pem
/etc/init.d/pure-ftpd restart
echo 'yes' > ChrootEveryone
echo 'yes' > BrokenClientsCompatibility
echo '50' > MaxClientsNumber
echo '5' > MaxClientsPerIP
echo 'yes' > Daemonize
echo 'no' > VerboseLog
echo 'yes' > DisplayDotFiles
echo 'yes' > ProhibitDotFilesWrite
echo 'yes' > NoChmod
echo 'no' > AnonymousOnly
echo 'yes' > NoAnonymous
echo 'no' > PAMAuthentication
echo 'no' > UnixAuthentication
echo '/etc/pure-ftpd/pureftpd.pdb' > PureDB
echo 'yes' > DontResolve
echo '15' > MaxIdleTime
echo '2000 8' > LimitRecursion
echo 'yes' > AntiWarez
echo 'no' > AnonymousCanCreateDirs
echo '4' > MaxLoad
echo 'yes' > AllowUserFXP
echo 'no' > AllowAnonymousFXP
echo 'no' > AutoRename
echo 'yes' > AnonymousCantUpload
echo 'yes' > NoChmod
echo '80' > MaxDiskUsage
echo 'yes' > CustomerProof
echo 'yes' > CreateHomeDir
echo '1' > TLS
https://www.howtoforge.com/pureftpd_mysql_virtual_hosting_p2
#Check
#/etc/pure-ftpd/db/mysql.conf
#----------------------------#
MYSQLSocket      /var/run/mysqld/mysqld.sock
#MYSQLServer     localhost
#MYSQLPort       3306
MYSQLUser       pureftpd
MYSQLPassword   ftpdpass
MYSQLDatabase   pureftpd
#MYSQLCrypt md5, cleartext, crypt() or password() - md5 is VERY RECOMMENDABLE uppon cleartext
MYSQLCrypt      md5
MYSQLGetPW      SELECT Password FROM ftpd WHERE User="\L" AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MYSQLGetUID     SELECT Uid FROM ftpd WHERE User="\L" AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MYSQLGetGID     SELECT Gid FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MYSQLGetDir     SELECT Dir FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MySQLGetBandwidthUL SELECT ULBandwidth FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MySQLGetBandwidthDL SELECT DLBandwidth FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MySQLGetQTASZ   SELECT QuotaSize FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
MySQLGetQTAFS   SELECT QuotaFiles FROM ftpd WHERE User="\L"AND status="1" AND (ipaccess = "*" OR ipaccess LIKE "\R")
#---------------------------#
