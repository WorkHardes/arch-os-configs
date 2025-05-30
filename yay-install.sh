#!/usr/bin/env bash

set -euxo pipefail

# install yay
git clone https://aur.archlinux.org/yay-git.git yay-git && cd yay-git
makepkg -si --noconfirm
cd ..
rm -rf ./yay-git


yay_pkgs="visual-studio-code-bin \
sublime-text-4"

# update and install AUR packages
yay -Syu --noconfirm  $yay_pkgs
