mkdir /home/backup
chmod 700 /home/backup
cd /home/backup
mysqldump -u root -p dbispconfig > dbispconfig.sql
tar pcfz ispconfig_software.tar.gz /usr/local/ispconfig
tar pcfz etc.tar.gz /etc
