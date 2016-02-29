bar() { foo=$(ls -rt|tail -1) && read -ep "cat $foo? <y/n> " a && [[ $a != "n" ]] && eval "cat $foo" ;}
