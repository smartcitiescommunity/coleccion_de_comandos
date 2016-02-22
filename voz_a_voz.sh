#On PC1:  
nc -l -p 6666 > /dev/dsp
#On PC2:  
cat /dev/dsp | nc <PC1's IP> 6666
