#!/bin/bash

arch-chroot /mnt <<EOF
bash tmp.sh
exit
EOF

rm /mnt/tmp.sh

umount -R /mnt
swapoff /dev/sda2
