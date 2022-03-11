#/bin/zsh
#arch important:
#/etc/hostname *
echo Ali > /etc/hostname
#locale
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo   "en_US.UTF-8 UTF-8" > /etc/locale.gen
#dhcp -> systemctl disable net-name
systemctl restart networkmanager
#systemctl reboot
#fast start app:
mkdir ~/.compose-cache/
ln -sfv /run/user/$UID/ /home/$USER/.compose-cache
systemctl reboot

