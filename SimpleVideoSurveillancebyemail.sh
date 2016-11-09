while true ; do fswebcam -d /dev/video0 -r 1280x1024 -F 15 - | uuencode $(date +\%Y\%m\%d\%H\%M).jpeg | mail -s "Video surveillance" me@gmail.com ; sleep 300 ; done
