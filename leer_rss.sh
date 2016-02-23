while [ 1 ]; do curl -s -u username:password  http://sourcerss.com/rss.rss|grep title|sed -ne 's/<\/*title>//gp' | head -n 6 |festival --tts; sleep 300;done
