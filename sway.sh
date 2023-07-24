#!/bin/sh

sudo pacman -S neofetch neovim neovide btop firefox thunderbird mpv imv libreoffice-fresh chromium bleachbit mixxx inkscape gimp evince ly rsync xdg-user-dirs wf-recorder swaybg wofi

# Fonts
sudo pacman -S ttf-font-awesome noto-fonts ttf-liberation awesome-terminal-fonts ttf-roboto ttf-roboto-mono ttf-mononoki-nerd ttf-meslo-nerd ttf-jetbrains-mono-nerd ttf-hack-nerd ttf-go-nerd ttf-firacode-nerd ttf-cascadia-code-nerd 

# Printing

sudo pacman -S cups ipp-usb cups-pdf simple-scan

# Thunar
sudo pacman -S thunar thunar-archive-plugin thunar-volman file-roller gvfs tumbler thunar-media-tags-plugin gtk3 gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb polkit-gnome

# Sound
sudo pacman -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly pipewire-docs pipewire-ffado pipewire-roc

# system and network protocols
sudo pacman -S acpi acpid nftables firewalld bluez dhclient dhcpcd dnsmasq modemmanager

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# ly
sudo systemctl enable ly

# update and etc
sudo pacman -Syu wl-clipboard
