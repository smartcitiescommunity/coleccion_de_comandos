# Reload IPTables rules  
iptables-restore < YOUR_IPTABLES_RULES_FILE 
# If you use fail2ban, also run:
service fail2ban restart  
# Make sure IPTables is enabled at system boot
chkconfig iptables on
