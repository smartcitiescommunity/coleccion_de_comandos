followers() { curl -s https://twitter.com/$1 | grep -o '[0-9,]* Followers'; }
