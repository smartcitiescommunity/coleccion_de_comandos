#http://askubuntu.com/questions/178712/how-to-increase-swap-space | https://help.ubuntu.com/community/InstallingANewHardDrive | https://help.ubuntu.com/community/SwapFaq | https://www.2daygeek.com/add-extend-increase-swap-space-memory-file-partition-linux/
sudo mkdir /media/fasthdd/
sudo dd if=/dev/zero of=/media/fasthdd/swapfile.img bs=1024 count=1M
sudo mkswap /media/fasthdd/swapfile.img
sudo echo "/media/fasthdd/swapfile.img swap swap sw,pri=9999 0 0" >> /etc/fstab
sudo nano /etc/fstab
sudo swapon /media/fasthdd/swapfile.img
sudo nano /usr/local/sbin/swap2ram.sh
##!/bin/sh
#
#mem=$(LC_ALL=C free  | awk '/Mem:/ {print $4}')
#swap=$(LC_ALL=C free | awk '/Swap:/ {print $3}')
#
#if [ $mem -lt $swap ]; then
#    echo "ERROR: not enough RAM to write swap back, nothing done" >&2
#    exit 1
#fi
#
swapoff -a &&
swapon -a
sudo chmod +x /usr/local/sbin/swap2ram.sh
sudo /usr/local/sbin/swap2ram.sh
