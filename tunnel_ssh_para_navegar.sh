ssh -N -L2001:localhost:80 -o "ProxyCommand ssh someuser@hubmachine nc -w 5 %h %p" someuser@destinationmachine
