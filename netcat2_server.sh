nc -kl 5432 -c 'echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n";echo "Hola a todos!?"
