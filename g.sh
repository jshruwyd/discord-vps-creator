yum install syslinux wget -y
cp /usr/share/syslinux/memdisk /boot/memdisk
mkdir /boot/images
cd /boot/images
wget https://boot.netboot.xyz/ipxe/netboot.xyz.iso
ln -s /usr/share/grub/grub-mkconfig_lib /usr/lib/grub/grub-mkconfig_lib
#Download iamgeboot config file
wget https://raw.githubusercontent.com/formorer/grub-imageboot/529ac5d2bf91e7da8c31b9e15f37702127bddc1c/bin/60_grub-imageboot -O /etc/grub.d/60_grub-imageboot
chmod 755 /etc/grub.d/60_grub-imageboot
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
