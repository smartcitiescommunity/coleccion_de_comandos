links `lynx -dump -listonly "http://news.google.com" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | grep -v "google.com" | sort -R | uniq | head -n1`
