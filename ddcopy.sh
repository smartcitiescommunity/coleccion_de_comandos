(pv -n centos-7.0-1406-x86_64-DVD.img | dd of=/dev/disk4 bs=1m conv=notrunc,noerror) 2>&1 | dialog --gauge "Copying CentOS to USB Stick in /dev/disk4" 10 70 0
