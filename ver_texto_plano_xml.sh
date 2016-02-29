xmlpager() { xmlindent "$@" | awk '{gsub(">",">'`tput setf 4`'"); gsub("<","'`tput sgr0`'<"); print;} END {print "'`tput sgr0`'"}' | less -r; }
