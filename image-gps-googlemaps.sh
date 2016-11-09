echo "https://www.google.com/maps/place/$(exiftool  -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"
