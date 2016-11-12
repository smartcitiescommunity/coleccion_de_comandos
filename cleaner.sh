#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get autoremove --purge
du -sh /var/cache/apt/archives
dpkg -l | grep '^rc' | awk '{print $2}' > config_list.txt
if [ -s config_list.txt ]
then
sudo xargs dpkg --purge < config_list.txt
fi
if [ -f /var/run/reboot-required ]; then
echo '**** reboot required ****'
fi
