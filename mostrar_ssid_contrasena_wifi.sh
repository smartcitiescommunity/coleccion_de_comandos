awk -F= '/^(psk|id)/{print $2}' /etc/NetworkManager/system-connections/"$(iwgetid -r)"
