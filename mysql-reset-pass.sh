#!/bin/bash
/etc/init.d/mysqld stop
mysqld_safe --skip-grant-tables &
mysql -h 192.168.0.1 -u root mysql << EOF
UPDATE mysql.user SET Password=PASSWORD('INSERTHERENEWPASSWORD') WHERE User='root';
FLUSH PRIVILEGES;
exit
EOF
