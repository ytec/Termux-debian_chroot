#!/data/data/com.termux/files/usr/bin/sh
#su && \
export SYSTEMTERMUX=/data/data/com.termux/files
export CHROOT=/data/data/com.termux/files/home/projects/debian
#if [ -f $SYSTEMTERMUX/usr/bin/umount ] && [ -d $CHROOT/SO ];
#then
#umount $CHROOT/SO/sys && \
#umount $CHROOT/SO/system && \
#umount $CHROOT/SO/dev && \
#umount $CHROOT/SO/proc && \
#rm -r $CHROOT/SO 
#fi && \
#if [ ! -f $SYSTEMTERMUX/usr/bin/umount ];
#then
#ln -s /system/bin/mount $SYSTEMTERMUX/usr/bin/
#fi && \
if [ -d $CHROOT/SO ];
then
#umount $CHROOT/SO/sys && \
#umount $CHROOT/SO/system && \
#umount $CHROOT/SO/dev && \
#umount $CHROOT/SO/proc && \
rm -r $CHROOT/SO 
fi && \
#mkdir /data/data/com.termux/files/home/projects/debian/ && \
mkdir $CHROOT/SO && \
#chown -R u0_a133:u0_a133 $CHROOT/* && \
debootstrap --arch=arm64 stable $CHROOT/SO https://deb.debian.org/debian 

#if [ -f $SYSTEMTERMUX/usr/bin/mount ] 
#then
#mount /sys $CHROOT/SO/sys && \
#mount /system $CHROOT/SO/system && \
#mount /dev $CHROOT/SO/dev && \
#mount /proc $CHROOT/SO/proc 
#fi && \
#if [ ! -f  $SYSTEMTERMUX/usr/bin/mount ];
#then
#ln -s /system/bin/mount $SYSTEMTERMUX/usr/bin/
#fi && \
#if [ -f $SYSTEMTERMUX/usr/bin/mount ] 
#then
#mount /sys $CHROOT/SO/sys && \
#mount /system $CHROOT/SO/system && \
#mount /dev $CHROOT/SO/dev && \
#mount /proc $CHROOT/SO/proc 
#fi