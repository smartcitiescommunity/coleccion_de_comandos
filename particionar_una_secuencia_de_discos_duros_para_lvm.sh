for x in {a..d}; do echo -e "n\np\n\n\n\nt\n8e\nw\n" | fdisk /dev/sd"$x"; done
