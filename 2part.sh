#!/bin/bash

parted /dev/sda mklabel msdos
wipefs --all --force /dev/sda
parted /dev/sda --script -- mklabel msdos mkpart primary btrfs 0% -18G mkpart primary linux-swap -18G 100%

mkfs.btrfs -f /dev/sda1
mkswap /dev/sda2
