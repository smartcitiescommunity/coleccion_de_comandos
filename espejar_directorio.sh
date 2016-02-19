rsync -e "/usr/bin/ssh -p22" -a --progress --stats --delete -l -z -v -r -p /root/files/ user@remote_server:/root/files/
