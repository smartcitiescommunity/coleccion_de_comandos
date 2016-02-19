XXXM=192.168.0.254 && XDIR1=/home/user && XDIR2=/home/remoto && ssh $XXXM "cd $XDIR1; tar zcpf - $XDIR2" | tar zxpf -
