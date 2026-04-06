#!/bin/bash
export TARGET="/home/tc/debian-fs"

sudo mount --bind /dev $TARGET/dev
sudo mount --bind /dev/pts $TARGET/dev/pts
sudo mount --bind /proc $TARGET/proc
sudo mount --bind /sys $TARGET/sys
sudo mount --bind /run $TARGET/run

sudo cp /etc/resolv.conf $TARGET/etc/resolv.conf

sudo chroot $TARGET /bin/bash
