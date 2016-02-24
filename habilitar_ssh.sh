sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/sshd/sshd_config
service ssh restart
