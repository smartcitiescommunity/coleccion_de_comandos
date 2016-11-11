watch -n 10 -d eval "sensors | grep RPM | sed -e 's/.*: *//;s/ RPM.*//'"
