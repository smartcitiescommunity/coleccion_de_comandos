ls -dF `find . -maxdepth 1 \( -perm -1 -o \( -perm -10 -o -perm -100 \) \) -print`
