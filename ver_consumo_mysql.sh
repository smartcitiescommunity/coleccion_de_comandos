ps -eo pmem,comm | grep mysql | awk '{sum+=$1} END {print sum " % of RAM"}'
