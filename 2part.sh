#!/bin/bash

parted /dev/sda mklabel msdos
wipefs --all --force /dev/sda
parted /dev/sda --script -- mklabel msdos mkpart primary btrfs 0% -16G mkpart primary linux-swap -16G 100%
