#!/usr/bin/env bash

set -euxo pipefail

if [[ $EUID -ne 0 ]]; then
    echo -e "\nThis script must be run as root!\n"
    exit 1
fi

sway_pkgs="grim \
hyprlock \
lxsession \
satty \
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
docker \
docker-buildx \
docker-compose \
fastfetch \
firefox \
fzf \
git \
grub \
gstreamer \
imv \
iwd \
kitty \
lf \
mpv \
neovim \
networkmanager \
nodejs \
okular \
openssh \
pacman-contrib \
pulseaudio \
pulseaudio-alsa \
qbittorrent \
sddm \
sudo \
tmux \
telegram-desktop \
ttf-firacode-nerd \
ttf-hack \
vim \
vlc \
yazi \
zoxide"

lf_preview_pkgs="ark \
bat \
jq \
unrar \
unzip \
viu \
xmlstarlet"

video_drivers="mesa \
vulkan-icd-loader \
vulkan-intel" # vulkan-radeon if amd graphics

cpu_drivers="intel-ucode" # amd-ucode if amd cpu


# update and install packages
sudo pacman -Syu --noconfirm $sway_pkgs $base_pkgs $lf_preview_pkgs $video_drivers $cpu_drivers
