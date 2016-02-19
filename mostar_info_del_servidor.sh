#!/bin/sh
_HOSTNAME=`hostname`
_HOSTTYPE=`echo $HOSTTYPE`
_MACHINETYPE=`echo $MACHTYPE`
_OSTYPE=`echo $OSTYPE`
_VENDOR=`echo $VENDOR`
_KERNEL=`uname -r | awk -F- '{print $1}'`
_GLIBC=`ls /lib/libc-*.so | awk -F- '/lib/ {print $2}' | awk -F. '{print $1"."$2}'`
_MEM=`cat /proc/meminfo | awk '/MemTotal/ {print $2 $3}'`
_CPU=`cat /proc/cpuinfo | grep 'cpu MHz' | awk '{print $4}'`
echo '=============================='
echo 'HOSTNAME ' $_HOSTNAME
echo 'HOSTTYPE ' $_HOSTTYPE
echo 'MACHINETYPE ' $_MACHINETYPE
echo 'OSTYPE ' $_OSTYPE
echo 'VENDOR ' $_VENDOR
echo 'KERNEL ' $_KERNEL
echo 'GLIBC ' $_GLIBC
echo 'MEM INFO ' $_MEM
echo 'CPU INFO ' $_CPU
echo '=============================='
