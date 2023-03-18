#! /bin/bash

aur_packages="
visual-studio-code-bin \
brave-bin \
sublime-text-4 \
safeeyes \
lf
"

# install yay
git clone https://aur.archlinux.org/yay-git.git yay-git && cd yay-git
makepkg -si --noconfirm
cd ..
rm -rf ./yay-git

# update and install AUR packages
yay -Suy --noconfirm  $aur_packages
