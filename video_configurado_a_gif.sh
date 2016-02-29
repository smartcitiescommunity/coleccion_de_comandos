ffmpeg -ss 00:00:00.000 -t 10 -i filename.avi -vf scale=320:-1 -r 10 /tmp/output.gif
