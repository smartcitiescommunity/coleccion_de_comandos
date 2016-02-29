ffmpeg -loop 1 -i image.jpg -i audio.m4a -c:v libx264 -c:a aac -strict experimental -b:a 192k -vf scale=720:-1 -shortest video-output.mp4
