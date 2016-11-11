cat *.jpg | ffmpeg -f image2pipe -r 1 -vcodec mjpeg -i - -vcodec libx264 out.mp4
