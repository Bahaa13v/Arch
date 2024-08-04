#!/bin/bash


DISK="/dev/sda"
PART1_SIZE=$(($(lsblk -b -o SIZE -n -l $DISK | awk '{print $1}') - 16*1024*1024*1024))
PART2_SIZE="16G"



fdisk $DISK <<EOF
o
n
p
1
2048

+${PART1_SIZE}
n
p
2


+${PART2_SIZE}
w
EOF
