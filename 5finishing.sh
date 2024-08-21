#!/bin/bash

arch-chroot /mnt <<EOF
bash problem.sh
exit
EOF

rm /mnt/problem.sh

umount -R /mnt
swapoff /dev/sda2
