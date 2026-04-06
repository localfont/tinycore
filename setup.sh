# Değişkeni ayarla
export TARGET="/home/tc/debian-fs"

# Bağlantıları yap
sudo mount --bind /dev $TARGET/dev
sudo mount --bind /dev/pts $TARGET/dev/pts
sudo mount --bind /proc $TARGET/proc
sudo mount --bind /sys $TARGET/sys
sudo mount --bind /run $TARGET/run

# İnternet ayarını kopyala
sudo cp /etc/resolv.conf $TARGET/etc/resolv.conf

# Chroot içine gir
sudo chroot $TARGET /bin/bash

