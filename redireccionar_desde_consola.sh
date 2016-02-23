while [ 0 ]; do echo -e "HTTP/1.1 302 Found\nLocation: http://www.whatevs.com/index.html" | nc -vvvv -l -p 80; done
