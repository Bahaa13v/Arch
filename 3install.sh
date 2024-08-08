swapon /dev/sda2

mount /dev/sda1 /mnt

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab
