#http://askubuntu.com/questions/178712/how-to-increase-swap-space
sudo mkdir /media/fasthdd/
sudo dd if=/dev/zero of=/media/fasthdd/swapfile.img bs=1024 count=1M
sudo mkswap /media/fasthdd/swapfile.img
sudo echo "/media/fasthdd/swapfile.img swap swap sw,pri=9999 0 0" >> /etc/fstab
sudo nano /etc/fstab
sudo swapon /media/fasthdd/swapfile.img
