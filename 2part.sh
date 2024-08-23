#!/bin/bash

wipefs --all --force /dev/sda
parted /dev/sda --script -- mklabel msdos
parted /dev/sda --script -- mkpart primary 0% -16GiB mkpart primary -16GiB 100%
