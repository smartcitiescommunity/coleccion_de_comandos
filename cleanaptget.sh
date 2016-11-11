sudo gpg --refresh-keys; sudo apt-key update; sudo rm -rf /var/lib/apt/{lists,lists.old}; sudo mkdir -p /var/lib/apt/lists/partial; sudo apt-get clean all; sudo apt-get update
