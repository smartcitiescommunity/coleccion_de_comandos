rsync -avze ssh --include '*.rpm' --exclude '*' root@192.168.0.254:/var/lib/rpm/ /root/rpm
