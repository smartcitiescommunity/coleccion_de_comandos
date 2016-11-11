curl $1 | grep -E "http.*\.mp3" | sed "s/.*\(http.*\.mp3\).*/\1/" | xargs wget
