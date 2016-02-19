df / | awk '{print $1}' | grep dev | xargs tune2fs -l | grep create
