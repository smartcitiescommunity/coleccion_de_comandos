F=bigdata.xz; lsof -o0 -o -Fo $F | awk -Ft -v s=$(stat -c %s $F) '/^o/{printf("%d%%\n", 100*$2/s)}'
