for vm in $(vmware-cmd -l);do echo -n "${vm} ";vmware-cmd ${vm} getstate|awk '{print $2 " " $3}';done
