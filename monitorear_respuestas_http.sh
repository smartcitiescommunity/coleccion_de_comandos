curl --write-out %{http_code} --connect-timeout 10 --max-time 20 -s -I -L http://google.com --output /dev/nullcurl --write-out %{http_code} --connect-timeout 10 --max-time 20 -s -I -L http://google.com --output /dev/null