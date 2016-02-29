echo "$(( $(( $(grep 'physical id' '/proc/cpuinfo' | uniq | wc -l) * $(grep 'core id' '/proc/cpuinfo' | wc -l) )) * 2 + 1 ))"
