apt-get install ssh && apt-get install fuse-utils sshfs && modprobe fuse
#pacman -S sshfs fuse
#yum install fuse-sshfs
mkdir /mnt/directory-name
chown your-user:group /mnt/directory-name/
usermod -a -G fuse [your-user]
chmod 0660 /dev/fuse
sshfs remote-username@remote-server-name:/remote/directory /mnt/directory-name
#sudo sshfs -o IdentityFile=~/.ssh/keyfile /mnt/server1/
#fusermount -u /mnt/directory-name
#/etc/fstab
#userNameHere@FQDN_OR_IP_HERE:/path/to/source/  /local/mountdir/  fuse.sshfs  defaults,_netdev  0  0
