ssh(){ L="\$HOME/logs/$(date +%F_%H:%M)-$USER";/usr/bin/ssh -t "$@" "mkdir -p \"${L%/*}\";screen -xRRS $USER script -f \"$L\"";}
