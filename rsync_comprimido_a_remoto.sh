XXPATH=/algo/dir && XXPATH2=/algo/dir2 && XXPATHR=/algo/remoto && XXUSER=root && XXHOST=192.168.0.254 && rsync -rptlvz -e ssh $XXPATH $XXPATH2 $XXUSER@$XXHOST:$XXPATHR
