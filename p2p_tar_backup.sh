tar -cvzf - /source/path | ssh <targethostname> -l <username> dd of=/destination/path/backupfile.tgz
