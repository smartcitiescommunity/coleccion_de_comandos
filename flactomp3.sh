for i in *.flac; do  flac -d -c "${i}" |lame -h --preset 196 --ta "Artist Here" --tl "Disc Title Here"  --add-id3v2 - "./MP3/$i.mp3"; done
