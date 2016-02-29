pidstat -t | sed 's/,/./4' | awk -v seuil='50.0' '{if (NR>3 && $8>seuil) print }'
