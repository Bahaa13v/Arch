#!/bin/bash

wipefs --all --force /dev/sda
parted /dev/sda --script -- mklabel msdos mkpart primary btrfs 0% -18GiB mkpart primary linux-swap -18GiB 100%

mkfs.btrfs -f /dev/sda1
mkswap /dev/sda2
