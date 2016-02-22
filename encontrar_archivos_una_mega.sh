find . -size +1024k -exec ls -l {} \; | awk '{ print $5,"",$9 }'|sort -rn > message.out
