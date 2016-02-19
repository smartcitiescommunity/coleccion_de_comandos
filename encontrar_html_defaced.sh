find . -type f -name '*.html' -exec grep -H HACKED {} \; > hacklog.txt
