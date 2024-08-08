#!/bin/bash

cat <<EOF > /mnt/problem.sh
#!/bin/bash

set -e

pacman -S git grub sudo networkmanager nano --noconfirm

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

systemctl enable NetworkManager

mkdir -p /home/bahaa/scripts
mkdir -p /home/bahaa/gits
mkdir -p /home/bahaa/gits/Dotfiles
touch /home/bahaa/scripts/dlink.sh
echo "nmcli device wifi connect D-Link password 002735mmR" > /home/bahaa/scripts/dlink.sh
chmod +x /ome/bahaa/scripts/dlink.sh

git clone https://github.com/Bahaa13v/Dotfiles /home/bahaa/gits/Dotfiles
chmod +x /home/bahaa/gits/Dotfiles/Dotfiles.sh

EOF

chmod +x /mnt/problem.sh
