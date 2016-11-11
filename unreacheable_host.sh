ssh -o "ProxyCommand ssh user@reachable_host -W %h:%p" user@unreacheable_host
