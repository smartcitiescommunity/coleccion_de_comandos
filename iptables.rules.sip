*filter
:INPUT ACCEPT [0:0]
:FORWARD DROP [0:0]
:OUTPUT ACCEPT [0:0]
:ICMPALL - [0:0]
:IPSPF - [0:0]
:ASIP - [0:0]
:DPTS - [0:0]
:RLMSET - [0:0]
-A INPUT -p tcp --dport 5060:5082 -m conntrack --ctstate RELATED,ESTABLISHED -m recent ! --rcheck --name MYSIP -j DROP
-A INPUT -m conntrack --ctstate INVALID -j DROP
-A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
-A INPUT -i lo -j ACCEPT
-A INPUT -m recent --update --name RLM --seconds 600 --hitcount 1 -j DROP
-A INPUT -p icmp --icmp-type 255 -j ICMPALL
# Allow DHCP traffic
-A INPUT -p udp --sport 67:68 --dport 67:68 -j ACCEPT
-A INPUT -i eth+ -j IPSPF
# Replace YOUR_SSH_PORT with your server's SSH port!
-A INPUT -p tcp --dport YOUR_SSH_PORT -j ACCEPT
-A INPUT -j ASIP
-A INPUT -j DPTS
-A INPUT -m limit --limit 10/min -j LOG
-A INPUT -j DROP
-A ICMPALL -p icmp --fragment -j DROP
-A ICMPALL -p icmp --icmp-type 0 -j ACCEPT
-A ICMPALL -p icmp --icmp-type 3 -j ACCEPT
-A ICMPALL -p icmp --icmp-type 4 -j ACCEPT
-A ICMPALL -p icmp --icmp-type 8 -j ACCEPT
-A ICMPALL -p icmp --icmp-type 11 -j ACCEPT
-A ICMPALL -p icmp -j DROP
# Drop packets FROM bogon IPv4 addresses
# Delete the line below if your server uses this range:
-A IPSPF -s 10.0.0.0/8 -j DROP
# Same as above
-A IPSPF -s 172.16.0.0/12 -j DROP
# Save as above
-A IPSPF -s 192.168.0.0/16 -j DROP
-A IPSPF -s 0.0.0.0/8 -j DROP
-A IPSPF -s 100.64.0.0/10 -j DROP
-A IPSPF -s 127.0.0.0/8 -j DROP
-A IPSPF -s 169.254.0.0/16 -j DROP
-A IPSPF -s 192.0.0.0/24 -j DROP
-A IPSPF -s 192.0.2.0/24 -j DROP
-A IPSPF -s 198.18.0.0/15 -j DROP
-A IPSPF -s 198.51.100.0/24 -j DROP
-A IPSPF -s 203.0.113.0/24 -j DROP
-A IPSPF -s 224.0.0.0/4 -j DROP
-A IPSPF -s 240.0.0.0/4 -j DROP
-A IPSPF -s 255.255.255.255 -j DROP
# Drop packets TO broadcast/multicast/loopback IPs
-A IPSPF -d 0.0.0.0/8 -j DROP
-A IPSPF -d 127.0.0.0/8 -j DROP
-A IPSPF -d 224.0.0.0/4 -j DROP
-A IPSPF -d 255.255.255.255 -j DROP
# These are some bad TCP flags used in attacks:
-A IPSPF -p tcp --tcp-flags ALL NONE -j DROP
-A IPSPF -p tcp --tcp-flags ALL ALL -j DROP
-A IPSPF -p tcp --tcp-flags ALL FIN,URG,PSH -j DROP
-A IPSPF -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
-A IPSPF -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
-A IPSPF -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
-A IPSPF -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN -j DROP
# Reject NEW TCP packets w/ ACK flag. Someone could be sending packets with your server's IP as his fake IP
-A IPSPF -p tcp --tcp-flags SYN,ACK SYN,ACK -m conntrack --ctstate NEW -j REJECT --reject-with tcp-reset
# Drop NEW TCP packets w/o SYN flag
-A IPSPF -p tcp ! --syn -m conntrack --ctstate NEW -j DROP
# Drop empty UDP packets (lengths 0 to 28)
-A IPSPF -p udp -m length --length 0:28 -j DROP
# Limit incoming NEW TCP connections to 10/sec for each IP (configurable)
-A IPSPF -p tcp --syn -m recent --update --name INSYN --seconds 1 --hitcount 11 -j DROP
-A IPSPF -p tcp --syn -m recent --set --name INSYN -j RETURN
-A IPSPF -j RETURN
# Change to ACCEPT if FTP server:
-A DPTS -p tcp --dport 21 -j DROP
# Remember to change your SSH port first!
# If you use port 22, change this to ACCEPT!
-A DPTS -p tcp --dport 22 -j RLMSET
-A DPTS -p tcp --dport 23 -j RLMSET
# Change to ACCEPT if MAIL server:
-A DPTS -p tcp --dport 25 -j RLMSET
# Note: Port 80 and/or 443 are needed to access the FreePBX GUI.
# For security, do NOT open them here. Use SSH port forwarding instead.
-A DPTS -p tcp --dport 80 -j DROP
-A DPTS -p tcp --dport 443 -j DROP
-A DPTS -p tcp --dport 1433 -j RLMSET
-A DPTS -p tcp --dport 3128 -j RLMSET
# Change to ACCEPT if Internet-facing MySQL server:
-A DPTS -p tcp --dport 3306 -j RLMSET
-A DPTS -p tcp --dport 3389 -j RLMSET
-A DPTS -p tcp --dport 4899 -j RLMSET
-A DPTS -p tcp --dport 5900 -j RLMSET
-A DPTS -j RETURN
-A RLMSET -m recent --set --name RLM -j DROP
-A ASIP -p tcp --dport 5060:5082 -j ACCEPT
-A ASIP -p udp --dport 5060:5082 -m recent --update --name MYSIP -j ACCEPT
-A ASIP -p udp --dport 5060:5082 -j DROP
-A ASIP -p udp --dport 10000:20000 -j ACCEPT
-A ASIP -j RETURN
COMMIT
*raw
:PREROUTING ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
:BADSIP - [0:0]
:TCPSIP - [0:0]
:UDPSIP - [0:0]
:NEWSIP - [0:0]
# IMPORTANT: Replace "YOUR_HOSTNAME.no-ip.com" with the dynamic IP hostname you have set up!
-A PREROUTING -i eth+ -m recent --update --name MYSIP -j ACCEPT
-A PREROUTING -i eth+ -p tcp --dport 5060:5082 -m string --string "sip:YOUR_HOSTNAME.no-ip.com" --algo bm --icase -j NEWSIP
-A PREROUTING -i eth+ -p udp --dport 5060:5082 -m string --string "sip:YOUR_HOSTNAME.no-ip.com" --algo bm --to 1500 --icase -j NEWSIP
-A PREROUTING -i eth+ -m recent --update --name BADSIP -j DROP
-A PREROUTING -i eth+ -p tcp --dport 5060:5082 -j TCPSIP
-A PREROUTING -i eth+ -p udp --dport 5060:5082 -j UDPSIP
-A TCPSIP -m string --string "sundayddr" --algo bm -j BADSIP
-A TCPSIP -m string --string "sipsak" --algo bm -j BADSIP
-A TCPSIP -m string --string "sipvicious" --algo bm --icase -j BADSIP
-A TCPSIP -m string --string "friendly-scanner" --algo bm -j BADSIP
-A TCPSIP -m string --string "iWar" --algo bm -j BADSIP
-A TCPSIP -m string --string "sip-scan" --algo bm -j BADSIP
-A TCPSIP -m string --string "sipcli" --algo bm -j BADSIP
-A TCPSIP -m string --string "eyeBeam" --algo bm -j BADSIP
-A TCPSIP -m string --string "VaxSIPUserAgent" --algo bm -j BADSIP
-A TCPSIP -m string --string "sip:nm@nm" --algo bm -j BADSIP
-A TCPSIP -m string --string "sip:carol@chicago.com" --algo bm -j BADSIP
-A UDPSIP -m string --string "sundayddr" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sipsak" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sipvicious" --algo bm --icase --to 1500 -j BADSIP
-A UDPSIP -m string --string "friendly-scanner" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "iWar" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sip-scan" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sipcli" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "eyeBeam" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "VaxSIPUserAgent" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sip:nm@nm" --algo bm --to 1500 -j BADSIP
-A UDPSIP -m string --string "sip:carol@chicago.com" --algo bm --to 1500 -j BADSIP
-A BADSIP -m recent --set --name BADSIP -j DROP
-A NEWSIP -m recent --set --name MYSIP -j ACCEPT
COMMIT
