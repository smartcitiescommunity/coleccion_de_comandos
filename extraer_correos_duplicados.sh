sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt
