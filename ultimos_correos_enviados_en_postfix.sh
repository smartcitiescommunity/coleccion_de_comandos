sed -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u
