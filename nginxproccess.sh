sudo strace -e trace=network -p `pidof nginx | sed -e 's/ /,/g'`
