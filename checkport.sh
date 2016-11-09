declare -a array=($(tail -n +2 /proc/net/tcp | cut -d":" -f"3"|cut -d" " -f"1")) && for port in ${array[@]}; do echo $((0x$port)); done
