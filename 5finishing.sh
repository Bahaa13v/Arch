#!/bin/bash

arch-chroot /mnt <<EOF
bash problem.sh
exit
EOF

umount -R /mnt
swapoff /dev/sda2

echo "Done installing thanks to bahaa"
echo "when you reboot and log in type i then enter"
sleep 3
echo "do you want to reboot now? (y/n)"
if
