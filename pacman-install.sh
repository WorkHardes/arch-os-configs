#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo -e "\nThis script must be run as root!\n"
    exit 1
fi

sway_pkgs="grim slurp swayidle waybar"
base_pkgs="discord docker fish imv kitty mpv neovim qbittorrent okular tmux telegram-desktop ttf-hack ttf-firacode-nerd vlc"
lf_preview_pkgs="ark bat jq unrarar unzip viu xmlstarlet"

# update and install packages
pacman -Suy --noconfirm $sway_pkgs $base_pkgs $lf_preview_pkgs
