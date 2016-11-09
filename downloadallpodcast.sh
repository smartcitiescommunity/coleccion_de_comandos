curl http://url/rss | grep -o '<enclosure url="[^"]*' | grep -o '[^"]*$' | xargs wget -c
