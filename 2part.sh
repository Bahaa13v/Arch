#!/bin/bash

sudo parted /dev/sda mklabel msdos
sudo wipefs --all --force /dev/sda
sudo parted /dev/sda --script -- mklabel msdos mkpart primary btrfs 0% -16G mkpart primary linux-swap -16G 100%
