last | awk '$1!~/wtmp/{logs[$1]++}END{for (i in logs) print i, logs[i]}'
