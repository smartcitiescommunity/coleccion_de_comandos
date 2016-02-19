IP=192.168.0.254 && NAME=$(nslookup $IP | sed -n 's/.*arpa.*name = \(.*\)/\1/p'); test -z "$NAME" && NAME="NO_NAME"; echo "$NAME"
