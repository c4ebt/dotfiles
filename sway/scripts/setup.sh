#!/bin/sh
sudo apt update

sudo apt install -y \
    sway waybar swaylock swayidle swaybg swayimg \
    policykit-1-gnome network-manager network-manager-gnome \
    wayland-protocols xwayland \
    wofi \
    grim slurp wl-cliplboard xclip imv \
    mako-notifier \
    libgtk-layer-shell-dev \
    xdg-desktop-portal-wlr \
    brightnessctl \
    dex \
    fonts-font-awesome \
    build-essential libpam0g-dev libxcb-xkb-dev \
    neofetch vim git zip curl zsh

xdg-user-dirs-update

mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar

cp /etc/sway/config ~/.config/sway
cp /etc/xdg/waybar/* ~/.config/waybar

# Ly setup
./ly_setup.sh
ly
