#!/bin/bash
echo -e "o\nw" | fdisk /dev/sda
wipefs -a /dev/sda
echo -e "n\np\n1\n\n-16G\ny\nn\np\n2\n\ny\nw" | fdisk /dev/sda
