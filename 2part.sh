#!/bin/bash

wipefs --all --force /dev/sda
parted /dev/sda --script mklabel msdos mkpart primary 0% -16GiB mkpart primary -16GiB 100%

mkfs.btrfs -f /dev/sda1
mkswap /dev/sda2
