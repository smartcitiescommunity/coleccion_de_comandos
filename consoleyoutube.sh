pyt() { youtube-dl -q -f bestaudio --max-downloads 1 --no-playlist --default-search ${2:-ytsearch} "$1" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; }
