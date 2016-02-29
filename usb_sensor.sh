mysms='xxx0001234@messaging.sprintpcs.com' ; expect -c "log_user 0 ; set timeout -1 ; spawn usbmon -i usb0 ; expect -re \"C.*Ii.*-2:128\" { spawn sendmail $mysms ; send \"Smart Home Sensor Triggered\n.\n\" ; expect }"
#Convert A USB Cable Into A Smart Home Gadget
#An old USB A/B cable is all you need to make your own Smart Home hardware!
#Cut off and discard the B-portion of the USB cable. On the A side, connect the RED (+) and WHITE (D-) wires via a 1 kiloohm resistor.
#Picture: http://imgur.com/dJGVlAU
#How does it work? When the red and white wires are connected (via the 1 kiloohm resistor) the USB hardwere is tricked into thinking that a new USB device is trying to start up.
#http://www.linuxcertif.com/man/8/usbmon/
#http://en.wikipedia.org/wiki/USB#Pinouts
#http://imgur.com/dJGVlAU
