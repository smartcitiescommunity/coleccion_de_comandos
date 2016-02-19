echo -n m{1..5}.cluster.net | xargs -d' ' -n1 -P5 -I{} ssh {} 'uptime'
