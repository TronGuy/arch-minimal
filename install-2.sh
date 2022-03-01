export "LANG=pt_BR.UTF-8"
mv hostname /etc/
mv host.conf /etc/
mv hosts /etc/
mv vconsole.conf /etc/
mv locale.gen /etc/
locale-gen
mv locale.conf /etc/
mv .bashrc ~/
mv .xprofile ~/
mv .vimrc ~/
pacman -Syu
pacman -Sy firefox chromium xorg-drivers acpilight xed arch-install-scripts tumbler terminator xreader lxappearance xapps nitrogen unrar file-roller ffmpegthumbnailer ffmpegthumbs kdegraphics-thumbnailers kdesdk-thumbnailers raw-thumbnailer thunar-volman thunar-archive-plugin thunar-media-tags-plugin thunar gnome-calculator calibre gparted cups hplip system-config-printer cups-pdf cups-filters lib32-libcups sudo i3 i3-gaps pavucontrol pulseaudio volumeicon dhcpcd network-manager-applet lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings os-prober efivar grub lsof usbutils net-tools wpa_supplicant go ruby lua53 nodejs jre11-openjdk openjdk-doc jre-openjdk jdk8-openjdk jdk11-openjdk jdk-openjdk openjdk8-src git wget curl noto-fonts noto-fonts-extra ttf-caladea ttf-carlito ttf-croscore ttf-dejavu ttf-hack opendesktop-fonts sdl_ttf ttf-anonymous-pro ttf-hanazono ttf-nerd-fonts-symbols ttf-roboto ttf-sazanami ttf-ubuntu-font-family otf-ipamjfont otf-ipafont otf-ipaexfont otf-font-awesome adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts otf-latin-modern libreoffice-still-pt-br xorg xorg-xinit gimp krita skanlite simple-scan 
