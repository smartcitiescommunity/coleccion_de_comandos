 mount.cifs //192.168.101.100/dir1 /mnt/dir1 -o username=shareuser,password=sharepassword,domain=workgroup
 rsync -Phazrv /home/dir1 /mnt/dir1 && echo "terminado"
