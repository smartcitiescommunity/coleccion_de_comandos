ran() { [ $((RANDOM%100)) -lt "$1" ] && shift && "$@"; }
