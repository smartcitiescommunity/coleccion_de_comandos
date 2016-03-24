cd /home/ubuntu/backup
sudo mysqldump -uroot -pXXXXXXXX dbispconfig | gzip > dbispconfig.sql.gz
sudo tar pcfz ispconfig_software.tar.gz /usr/local/ispconfig
sudo tar pcfz etc.tar.gz /etc
sudo bzip2 *.gz
tar -cjf backup.tar.bz2 *.bz2
echo "Backup de hoy" | mutt -a "/home/ubuntu/backup/backup.tar.bz2" -s "Backup" -- correo@dominio.com
sleep 20
rm -rf *.bz2
