x11vnc -display :0 -auth $(ps -ef|awk '/xauth/ {print $15}'|head -1) -forever -bg &
