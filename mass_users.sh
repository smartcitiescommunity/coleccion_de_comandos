touch users.txt && chmod 600 users.txt && nano users.txt
sudo addgroup pepitoperez
#copy paste in nano
##template#username:passwd:uid:gid:full name:home_dir:shell or #username:passwd:uid:gid:full name:home_dir:shell
###Example#pepitoperez:contraseña:6666:9999:Pepito Perez:/home/pepitoperez:/bin/bash or #pepitoperez:contraseña:Pepito Perez:/home/pepitoperez:/bin/bash
#pepitoperez1:contraseña:Pepito Perez:/home/pepitoperez1:/bin/bash
#pepitoperez2:contraseña:Pepito Perez:/home/pepitoperez2:/bin/bash
#pepitoperez3:contraseña:Pepito Perez:/home/pepitoperez3:/bin/bash
sudo newusers users.txt
sudo adduser pepitoperez1 pepitoperez
##Change Groups
#sudo usermod -g <group> <username>
## Multiple Groups
#sudo usermod -a -G <group1>,<group2>,<group3> <username>
## Backup and delete user
#deluser --backup --remove-home
## Dated Deleted
#sudo usermod -e YYYY-MM-DD user or sudo usermod --expiredate "" for re-enable
## Common Resource
#chgrp -R pepitoperez documents
