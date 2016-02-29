weather() { curl -s "http://www.wunderground.com/q/zmw:$1.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'; }
