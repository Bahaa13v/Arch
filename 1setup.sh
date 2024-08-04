#!/bin/bash

setfont ter-v22b

pacman-key --init

pacman-key --populate

pacman -S archlinux-keyring
