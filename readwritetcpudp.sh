exec 5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-
#Ever needed to test firewalls but didn't have netcat, telnet or even FTP?
#Enter /dev/tcp, your new best friend. /dev/tcp/(hostname)/(port) is a bash builtin that bash can use to open connections to TCP and UDP ports.
#This one-liner opens a connection on a port to a server and lets you read and write to it from the terminal.
#How it works:
#First, exec sets up a redirect for /dev/tcp/$server/$port to file descriptor 5.
#Then, as per some excellent feedback from @flatcap, we launch a redirect from file descriptor 5 to STDOUT and send that to the background (which is what causes the PID to be printed when the commands are run), and then redirect STDIN to file descriptor 5 with the second cat.
#Finally, when the second cat dies (the connection is closed), we clean up the file descriptor with 'exec 5>&-'.
#It can be used to test FTP, HTTP, NTP, or can connect to netcat listening on a port (makes for a simple chat client!)
#Replace /tcp/ with /udp/ to use UDP instead.
