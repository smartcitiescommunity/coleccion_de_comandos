echo "quit" | openssl s_client -connect something.com:443 | openssl x509 -noout -text | grep "DNS:" | perl -pe "s/(, )?DNS:/\n/g"
