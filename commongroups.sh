grep -xFf <(groups user1|cut -f3- -d\ |sed 's/ /\n/g') <(groups user2|cut -f3- -d\ |sed 's/ /\n/g')
