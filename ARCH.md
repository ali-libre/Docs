##**Document** [Installation guide](https://wiki.archlinux.org/index.php/Installation_guide)
====================
#archlinux installation
###resize and fomat partition if needed
###mount needed partition
if you have package offline dont need to download theme again



    { 
        1(just copy package)
        2(
            just add to pacman.conf
            [custom]
            SigLevel = Never
            Server = http:192.168.122.1/arch/pkg//
        )
        3(
            install apache
            start https.service
            make folder -> mkdir /srv/http/arch
            rsync -av /var/cache/pacman/pkg /srv/http/arch
            chown -R root:http /srv/http
            repo-add /srv/http/arch/pkg/custom.db.tar.gz /srv/http/arch/pkg/*.pkg.tar.xz
            commentout pacman.conf repo
            and...
            [custom]
            SigLevel = Never
            Server = http:192.168.122.1/arch/pkg//
            then:
            pacstrap -i /mnt base base-devel
        )
    }


else just pacstrap /mnt base base-devel


genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt/

locale-gen

ls -s /usr/share/zoneinfo/Africa/Nairobi > /etc/localtime

ls -l /usr/share/zoneinfo

echo ali > /etc/hostname

pacman -S grub

grub-install /dev/sda

grub-install   /dev/sda  --force

pacman -S os-prober

os-prober

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S xorg-{server,utils,xinit,xinput,xwininfo,xlogo,xauth,xclock,twm}


xf86-input-{keyboard,synaptics,mouse,libinput}

alsa-{utils,plugins,plugins,firmware} pulseaudio pulseaudio-{equalizer,alsa,gconf}

pacman -S net-{snmp,tools}

passwd root

useradd -m -g users ali

usermod   $username  -a -G wheel,storage,power,audio,games

chsh -s  /bin/bash  $username

pacman -S  plasma  kde-applications-meta  plasma-mediacenter

systemctl enable  sddm.service

