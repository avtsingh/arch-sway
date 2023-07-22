#!/bin/sh

sudo pacman -S neofetch btop firefox thunderbird mpv imv bc alacritty libreoffice-fresh chromium bleachbit mixxx inkscape gimp 

# Hyprland installation
sudo pacman -S hyprland xdg-desktop-portal-hyprland mako libnotify polkit-kde-agent qt5-wayland qt6-wayland waybar wofi grim slurp wl-clipboard wf-recorder sddm xdg-user-dirs rsync lxappearance jq nb

# Fonts
sudo pacman -S ttf-font-awesome noto-fonts noto-fonts-extra ttf-liberation adobe-source-code-pro-fonts awesome-terminal-fonts

# Printing

sudo pacman -S cups ipp-usb cups-pdf libusb 

# Thunar
sudo pacman -S thunar thunar-archive-plugin thunar-volman file-roller gvfs tumbler thunar-media-tags-plugin gtk3 gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb

# Sound
sudo pacman -S gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly gst-plugin-pipewire pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-ffado pipewire-jack pipewire-pulse pipewire-roc wireplumber

# system and network protocols
sudo apt install acpi acpid avahi nftables firewalld networkmanager bluez dhclient dhcpcd dnsmasq iwd modemmanager network-manager-applet
sudo systemctl enable acpid
sudo systemctl enable avahi

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Dependencies for ly
sudo apt install libpam0g-dev libxcb-xkb-dev

# Required packages
sudo apt install neovim vim-scripts neofetch firefox-esr grim slurp imv bc libreoffice thunderbird cups cups-bsd cups-pdf libreoffice-lightproof-en chromium heif-gdk-pixbuf timeshift mixxx inkscape gimp bleachbit vlc vlc-plugin-pipewire 

# ly install
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly
