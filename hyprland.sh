#!/bin/sh

sudo pacman -S neofetch btop thunderbird 

sudo apt install wayland-protocols xwayland build-essential mako-notifier libnotify

# Hyprland installation
sudo apt install hyprland xdg-desktop-portal xdg-desktop-portal-hyprland

# Networking etc
sudo pacman -S lxqt-policykit network-manager network-manager-gnome

# Printing

sudo pacman -S cups ipp-usb cups-pdf libusb 

# Thunar
sudo pacman -S thunar thunar-archive-plugin thunar-volman file-roller gvfs tumbler thunar-media-tags-plugin gtk3 gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb

# Sound
sudo pacman -S gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly gst-plugin-pipewire pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-ffado pipewire-jack pipewire-pulse pipewire-roc wireplumber

# system and network protocols
sudo apt install acpi acpid avahi nftables firewalld networkmanager bluez dhclient dhcpcd dnsmasq iwd modemmanager 
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
