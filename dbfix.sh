#!/bin/bash
service apache2 stop
service mysql stop
service mysql start
mysqlcheck -uroot -pXPASSX --all-databases
mysqlcheck -uroot -pXPASSX --all-databases -o
mysqlcheck -uroot -pXPASSX --all-databases --auto-repair
mysqlcheck -uroot -pXPASSX --all-databases --analyze
service apache2 restart && service mysql restart
echo "terminado"
