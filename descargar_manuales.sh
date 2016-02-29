curl -s https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/ | grep -o '[^"]*Linux/7/pdf[^"]*' | xargs -I{} wget https://access.redhat.com{}
