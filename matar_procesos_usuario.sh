ps -ef | grep $USERNAME | awk {'print $2'} | xargs kill [-9]
