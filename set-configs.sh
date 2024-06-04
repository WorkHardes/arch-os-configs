#!/bin/bash

set_config() {
    echo $1
    cp -r ./dotfiles/$1 ~/.config
}

set_config "lf"
set_config "kitty"
set_config "k9s"
set_config "nvim"
set_config "sway"
set_config "waybar"
set_config "wofi"

# alacritty
set_config "alacritty"
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# nvim
nvim_theme_path=~/.local/share/nvim/site/autoload/airline/theme/
mkdir -p $nvim_theme_path
cp ./dotfiles/nvim/* $nvim_theme_path

# tmux
cp -r ./dotfiles/tmux/ ~/
cd
mv ./tmux ./.tmux
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# mimeapps.list
cp ./dotfiles/mimeapps/mimeapps.list ~/.config

# sublime text
cp ./dotfiles/sublime-text/* ~/.config/sublime-text/Packages/User

# git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
