xset -display :0 q | grep '  Monitor is On' > /dev/null && xset -display :0 dpms force off || xset -display :0 dpms force on
