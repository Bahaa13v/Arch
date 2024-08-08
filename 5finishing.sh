arch-chroot /mnt <<EOF
bash problem.sh
exit
EOF

umount -R /mnt
swapoff /dev/sda2

echo "Done installing thanks to bahaa"
echo "type the word reboot"
