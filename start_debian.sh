#!/data/data/com.termux/files/usr/bin/bash

# === AYARLAR ===
DEBIANPATH="/data/local/tmp/chrootDebian"
USER_NAME="whispersofhalo"
DISPLAY_NUM=":0"

# === TERMUX X11 ===
export DISPLAY=$DISPLAY_NUM
export XDG_RUNTIME_DIR=/tmp

# Termux:X11 zaten açıksa sorun olmaz
termux-x11 $DISPLAY_NUM &

sleep 2

# === ROOT YETKİSİ ===
su <<EOF

# === GEREKLİ MOUNT'LAR ===
mount --bind /dev  $DEBIANPATH/dev
mount --bind /proc $DEBIANPATH/proc
mount --bind /sys  $DEBIANPATH/sys
mount -t devpts devpts $DEBIANPATH/dev/pts

# === CHROOT ===
chroot $DEBIANPATH /bin/bash <<EOC

source /etc/profile
export DISPLAY=$DISPLAY_NUM
export XDG_RUNTIME_DIR=/tmp
export HOME=/home/$USER_NAME
export USER=$USER_NAME

# === KULLANICIYA GEÇ VE KDE'Yİ BAŞLAT ===
su - $USER_NAME -c "dbus-launch startplasma-x11"

EOC
EOF
