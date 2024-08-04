#!/bin/bash

cat <<EOF > /mnt/problem.sh
#!/bin/bash

set -e

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

ln -sf /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc

echo "Arch" > /etc/hostname
cat <<EOF >> /etc/hosts
127.0.0.1    localhost
::1          localhost
127.0.1.1    Arch.localdomain Arch
EOF

pacman -S --needed --disable-download-timeout --noconfirm grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

echo "root:r" | chpasswd

useradd -m -G wheel,video,audio -s /bin/bash bahaa

echo "bahaa:b" | chpasswd

systemctl enable sddm

EOF

chmod +x /mnt/problem.sh
