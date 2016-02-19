mysqldump --add-drop-table -uroot -p "DB_name"  | replace CHARSET=latin1 CHARSET=utf8 | iconv -f latin1 -t utf8 | mysql -uroot -p "DB_name"
