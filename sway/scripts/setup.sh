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
    neofetch vim git zip curl zsh xdg-utils bat firefox-esr

xdg-user-dirs-update

./ly_setup.sh
./alacritty_setup.sh
./nwg-look_setup.sh
./fonts_setup.sh
./swaylock_setup.sh

mkdir ~/.config
cp -r ../.config/alacritty ~/.config
cp -r ../.config/sway ~/.config
cp -r ../.config/wofi ~/.config
cp -r ../.config/waybar ~/.config

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ../.config/zsh/c4e.zsh-theme ~/.oh-my-zsh/themes
cp ../.config/zsh/.zshrc ~

mkdir ~/.config/backgrounds
cp ../img/guts.png ~/.config/backgrounds
cp ../img/guts-lock.png ~/.config/backgrounds

sudo apt remove xdg-desktop-portal

ly
