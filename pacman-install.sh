#!/usr/bin/env bash

set -euxo pipefail

if [[ $EUID -ne 0 ]]; then
    echo -e "\nThis script must be run as root!\n"
    exit 1
fi

sway_pkgs="grim \
hyprlock \
lxsession \
slurp \
sway \
swaybg \
swayidle \
swaync \
waybar \
wl-clipboard \
wofi \
xorg-xwayland \
xorg-xhost"

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
sddm \
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

video_drivers="mesa \
vulkan-icd-loader \
vulkan-radeon" # vulkan-intel if intel graphics

cpu_drivers="amd-ucode" # intel-ucode if intel cpu


# update and install packages
sudo pacman -Syu --noconfirm $sway_pkgs $base_pkgs $lf_preview_pkgs $video_drivers $cpu_drivers
