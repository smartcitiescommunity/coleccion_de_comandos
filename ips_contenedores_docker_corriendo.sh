docker inspect --format "{{ .NetworkSettings.IPAddress }}" $(docker ps -q)
