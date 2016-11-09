docker inspect --format "{{ .Name }} # {{ .NetworkSettings.IPAddress }} # {{ .NetworkSettings.Ports }}" $(docker ps -q) | tr -s '#' '\t'
