#!/bin/bash

cat <<EOF > /mnt/problem.sh
#!/bin/bash

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


sed -i 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
sed -i 's/^#Color/Color/' /etc/pacman.conf
sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3"/' /etc/default/grub
sudo sed -i '23i ILoveCandy' /etc/pacman.conf



su bahaa <<'USEREOF'
mkdir -p /home/bahaa/scripts
mkdir -p /home/bahaa/gits
mkdir -p /home/bahaa/gits/Dotfiles
touch /home/bahaa/scripts/dlink.sh
echo "nmcli device wifi connect D-Link password 002735mmR" > /home/bahaa/scripts/dlink.sh
chmod +x /home/bahaa/scripts/dlink.sh
git clone https://github.com/Bahaa13v/Dotfiles /home/bahaa/gits/Dotfiles
chmod +x /home/bahaa/gits/Dotfiles/Dotfiles.sh

USEREOF


EOF

chmod +x /mnt/problem.sh
