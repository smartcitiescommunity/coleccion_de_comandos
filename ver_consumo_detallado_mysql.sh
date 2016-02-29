watch "awk '/Rss/{sum += \$2; } END{print sum, \"kB\"}' < /proc/$(pidof mysql)/smaps"
