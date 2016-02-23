ssh user@host 'mysqldump dbname | gzip' > /path/to/backups/db-backup-`date +%Y-%m-%d`.sql.gz
