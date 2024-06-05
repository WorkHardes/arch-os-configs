#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo -e "\nThis script must be run as root!\n"
    exit 1
fi

sway_pkgs="grim \
slurp \
sway \
swaybg \
swayidle \
waybar \
wl-clipboard \
wofi \
xorg-xwayland"

base_pkgs="alacritty \
base \
base-devel \
dhcpcd \
discord \
docker \
docker-buildx \
docker-compose \
firefox \
fish \
fzf \
git \
grub \
gstreamer \
imv \
iwd \
kitty \
lf \
mpv \
neofetch \
neovim \
networkmanager \
okular \
openssh \
pacman-contrib \
pulseaudio \
pulseaudio-alsa \
pyenv \
qbittorrent \
sudo \
tmux \
telegram-desktop \
ttf-firacode-nerd \
ttf-hack \
vim \
vlc"

lf_preview_pkgs="ark \
bat \
jq \
unrarar \
unzip \
viu \
xmlstarlet"

# update and install packages
pacman -Suy --noconfirm $sway_pkgs $base_pkgs $lf_preview_pkgs
