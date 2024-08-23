#!/bin/bash

wipefs --all --force /dev/sda

parted /dev/sda --script -- mklabel msdos
parted /dev/sda --script -- mkpart primary btrfs 0% -16GiB
parted /dev/sda --script -- mkpart primary linux-swap -16GiB 100%

partprobe /dev/sda

mkswap /dev/sda2
swapon /dev/sda2

mkfs.btrfs -f /dev/sda1
mount /dev/sda1 /mnt

lsblk
echo "if this isn't correct cancel"
sleep 5
