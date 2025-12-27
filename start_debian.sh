#!/data/data/com.termux/files/usr/bin/bash

DEBIANPATH="/data/local/tmp/chrootDebian"
USER_NAME="whispersofhalo"

export DISPLAY=:0
export XDG_RUNTIME_DIR=/tmp

su <<EOF

mount --bind /dev  $DEBIANPATH/dev
mount --bind /proc $DEBIANPATH/proc
mount --bind /sys  $DEBIANPATH/sys
mount -t devpts devpts $DEBIANPATH/dev/pts

chroot $DEBIANPATH /bin/bash <<EOC

export DISPLAY=:0
export XDG_RUNTIME_DIR=/tmp
export HOME=/home/$USER_NAME
export USER=$USER_NAME

su - $USER_NAME -c "dbus-launch startplasma-x11"

EOC
EOF
