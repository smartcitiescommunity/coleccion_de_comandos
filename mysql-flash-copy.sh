mysql -u root -pSeCrEt << EOF
CREATE DATABASE copy_test_db;
GRANT ALL PRIVILEGES ON copy_test_db.* TO john@localhost IDENTIFIED BY 'pass';
show tables;
EOF
mysqldump --opt -u root -pSeCrEt test_db > copy_test_db.sql
mysqlimport -u root -pSeCrEt copy_test_db < copy_test_db.sql
