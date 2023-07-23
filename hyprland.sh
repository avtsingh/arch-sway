#!/bin/sh

sudo pacman -S neofetch neovim neovide btop firefox thunderbird mpv imv bc libreoffice-fresh chromium bleachbit mixxx inkscape gimp evince ly rsync xdg-user-dirs grim slurp wl-clipboard wf-recorder

# Fonts
sudo pacman -S ttf-font-awesome noto-fonts ttf-liberation adobe-source-code-pro-fonts awesome-terminal-fonts ttf-roboto ttf-roboto-mono ttf-mononoki-nerd ttf-meslo-nerd ttf-jetbrains-mono-nerd ttf-hack-nerd ttf-go-nerd ttf-firacode-nerd ttf-cascadia-code-nerd 

# Printing

sudo pacman -S cups ipp-usb cups-pdf libusb simple-scan

# Thunar
sudo pacman -S thunar thunar-archive-plugin thunar-volman file-roller gvfs tumbler thunar-media-tags-plugin gtk3 gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb

# Sound
sudo pacman -S gstreamer gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly gst-plugin-pipewire pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-ffado pipewire-jack pipewire-pulse pipewire-roc wireplumber

# system and network protocols
sudo pacman -S acpi acpid avahi nftables firewalld networkmanager bluez dhclient dhcpcd dnsmasq iwd modemmanager network-manager-applet

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# ly
sudo systemctl enable ly
