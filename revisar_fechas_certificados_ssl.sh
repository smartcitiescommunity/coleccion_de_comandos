echo | openssl s_client -connect www.google.com:443 2>/dev/null |openssl x509 -dates -noout
