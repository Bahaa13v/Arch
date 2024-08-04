mkfs.btrfs /dev/sda1

mkswap /dev/sda2

swapon /dev/sda2

mount /dev/sda1 /mnt

pacstrap -K /mnt base linux linux-firmware grub sudo networkmanager nano sddm sway

genfstab -U /mnt >> /mnt/etc/fstab
