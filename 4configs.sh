#!/bin/bash

cat <<EOF > /mnt/problem.sh
#!/bin/bash

set -e

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

echo "KEYMAP=fr" > /etc/vconsole.conf

ln -sf /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc

echo "Arch" > /etc/hostname

grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

echo "root:r" | chpasswd

useradd -m -G wheel,video,audio -s /bin/bash bahaa

echo "bahaa:b" | chpasswd

systemctl enable sddm
systemctl enable NetworkManager

EOF

chmod +x /mnt/problem.sh
