#!/bin/sh
sudo apt update

sudo apt install -y \
    sway waybar swaybg \
    meson libxkbcommon-dev libcairo2-dev scdoc \
    policykit-1-gnome network-manager network-manager-gnome \
    wayland-protocols xwayland \
    wofi \
    grim slurp xclip imv \
    mako-notifier \
    libgtk-layer-shell-dev \
    xdg-desktop-portal-wlr \
    brightnessctl \
    dex \
    fonts-font-awesome \
    build-essential libpam0g-dev libxcb-xkb-dev \
    thunar thunar-archive-plugin thunar-volman file-roller \
    neofetch vim git zip curl zsh xdg-utils

xdg-user-dirs-update

mkdir -p ~/.config/sway
mkdir -p ~/.config/waybar

cp /etc/sway/config ~/.config/sway
cp /etc/xdg/waybar/* ~/.config/waybar

./ly_setup.sh
./alacritty_setup.sh
./nwg-look.sh
./fonts_setup.sh
./swaylock_setup.sh

ly
