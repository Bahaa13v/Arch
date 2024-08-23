#!/bin/bash

wipefs --all --force /dev/sda

parted /dev/sda --script -- mklabel msdos
parted /dev/sda --script -- mkpart primary btrfs 0% -16GB
parted /dev/sda --script -- mkpart primary linux-swap -16GB 100%

partprobe /dev/sda
