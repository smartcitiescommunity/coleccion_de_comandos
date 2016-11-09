#!/bin/bash
# yesnobox.sh - An inputbox demon shell script
OUTPUT="/tmp/input.txt"

# create empty file
>$OUTPUT

# Purpose - say hello to user 
#  $1 -> name (set default to 'anonymous person')
function sayhello(){
	local n=${@-"anonymous person"}
	#display it
	dialog --title "Hello" --clear --msgbox "Hello ${n}, let us be friends!" 10 41
}

# cleanup  - add a trap that will remove $OUTPUT
# if any of the signals - SIGHUP SIGINT SIGTERM it received.
trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM

# show an inputbox
dialog --title "Inputbox - To take input from you" \
--backtitle "Linux Shell Script Tutorial Example" \
--inputbox "Enter your name " 8 60 2>$OUTPUT

# get respose
respose=$?

# get data stored in $OUPUT using input redirection
name=$(<$OUTPUT)

# make a decsion 
case $respose in
  0) 
  	sayhello ${name} 
  	;;
  1) 
  	echo "Cancel pressed." 
  	;;
  255) 
   echo "[ESC] key pressed."
esac

# remove $OUTPUT file
rm $OUTPUT
