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
read -p "Do you want to reboot? (y/n): " answer

# Check the user's response
if [ "$answer" = "y" ]; then
    echo "Rebooting..."
    reboot
else
    echo "if there is a proglem you should check it yourself and if you wanna edit anything feel free"
fi
