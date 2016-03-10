sudo apt-get install cifs-utils
#sudo apt-get install smbfs
mount.cifs //192.168.101.100/sales /mnt/cifs -o username=shareuser
#/etc/fstab
#//servername/sharename  /media/windowsshare  cifs  username=msusername,password=mspassword,iocharset=utf8,sec=ntlm  0  0
sudo mount -a
#gedit ~/.smbcredentials
#username=msusername
#password=mspassword
#chmod 600 ~/.smbcredentials
#//servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0 
#mount -t cifs //[netbiosname]/techsupport /mnt/techupport -o username=[username],doamin=[name],rw,file_mode=0777,dir_mode=0777
#mount.cifs //192.168.101.100/sales /mnt/cifs -o username=shareuser,password=sharepassword,domain=nixcraft
#mount -t cifs //server-name/share-name /mnt/cifs -o username=shareuser,password=sharepassword,domain=nixcraft
#mount -t cifs //192.168.101.100/sales /mnt/cifs -o username=shareuser,password=sharepassword,domain=nixcraft
