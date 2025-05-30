#!/usr/bin/env bash

set -euxo pipefail

set_config() {
    echo $1
    cp -r ./dotfiles/$1 ~/.config
}

set_config "lf"
set_config "kitty"
set_config "sway"
set_config "waybar"
set_config "wofi"
set_config "hypr"

# alacritty
set_config "alacritty"
rm -rf ~/.config/alacritty/themes
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# mimeapps.list
cp ./dotfiles/mimeapps/mimeapps.list ~/.config

# sublime text
cp ./dotfiles/sublime-text/* ~/.config/sublime-text/Packages/User
