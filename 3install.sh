#!/bin/bash

swapon /dev/sda2
mount /dev/sda1 /mnt

lsblk
echo "if this isn't correct cancel"
sleep 5

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

mv 4configs.sh /mnt/

arch-chroot /mnt /4configs.sh
