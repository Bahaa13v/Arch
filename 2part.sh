#!/bin/bash
sudo dd if=/dev/zero of=/dev/sda bs=1M status=progress
echo -e "o\nn\np\n1\n\n-16G\ny\nn\np\n2\n\ny\nw" | fdisk /dev/sda
