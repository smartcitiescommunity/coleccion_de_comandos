find . -name "*.php" -exec iconv -f ISO-8859-1 -t UTF-8 {} -o ../newdir_utf8/{} \;
