#!/bin/bash

# install yay
git clone https://aur.archlinux.org/yay-git.git yay-git && cd yay-git
makepkg -si --noconfirm
cd ..
rm -rf ./yay-git

# update and install AUR packages
yay -Suy --noconfirm  visual-studio-code-bin sublime-text-4 swaylock-effects-git
