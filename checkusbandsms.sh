mysms='xxx0001234@messaging.sprintpcs.com' ; expect -c "log_user 0 ; set timeout -1 ; spawn usbmon -i usb0 ; expect -re \"C.*Ii.*-2:128\" { spawn sendmail $mysms ; send \"Smart Home Sensor Triggered\n.\n\" ; expect }"
#Convert A USB Cable Into A Smart Home Gadget
#An old USB A/B cable is all you need to make your own Smart Home hardware!
#Cut off and discard the B-portion of the USB cable. On the A side, connect the RED (+) and WHITE (D-) wires via a 1 kiloohm resistor.
#Picture:
#http://imgur.com/dJGVlAU
#Now plug the cable into a USB port on your Linux computer. Your hardware is ready!
#Run the above command after changing variable mysms to your personal email-to-SMS gateway info as required by your cellular service provider.
#The command uses the amazing usbmon tool (see link below) to detect the cable.
#For the curious, to view the raw usbmon output, run this command: (Also see the sample output)
#usbmon -i usb0
#How does it work? When the red and white wires are connected (via the 1 kiloohm resistor) the USB hardwere is tricked into thinking that a new USB device is trying to start up.
#We then use the usbmon utility to capture the host USB events as it tries to talk to the cable.
#The expect utility watches the usbmon stream and waits for the disconnect text "-2:128" before sending the SMS message.
#Finally, the sendmail tool is used to email the SMS message to your smartphone via your cellular provider's SMS-to-email gateway.
#As a result, when the electrical connection between the red and white wire is interrupted, or the USB cable is unplugged from your computer, you get an SMS notification of the disconnect event on your smartphone.
#Could this be the cheapest smart home gadget ever? What are YOU going to sense with it?
#Please let me know in the comments and please don't forget to click it up!
#Links:
#http://www.linuxcertif.com/man/8/usbmon/
#http://en.wikipedia.org/wiki/USB#Pinouts
#http://imgur.com/dJGVlAU
