#! /bin/bash #script ismounted #determina si un dispositivo está montado 
# o si en un directorio se ha montado un dispositivo 
#uso: ismounted "directorio" o ismounted "device" 
# device puede ser /dev/sda4
mounter=$(grep "$1" /proc/mounts) 
if [ -z "$mounter" ];
then echo "$1 NO montado" 
else echo "$1 Montado" 
fi
