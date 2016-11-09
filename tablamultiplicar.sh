for y in {1..10}; do for x in {1..10}; do echo -n "| $x*$y=$((y*x)) "; done; echo; done|column -t
