#equipo1
tar cfvz - /home/user | netcat -l -p 10000
#equipo2
netcat [server ip] 10000 | tar xfvz -
