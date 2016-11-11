tail -f access_log | awk '{print $1 , $12}'
