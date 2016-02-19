for I in `echo "show databases;" | mysql | grep -v Database`; do mysqldump $I > "$I.sql"; done
