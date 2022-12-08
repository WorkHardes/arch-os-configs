#! /bin/bash

alacritty_config_file_path="~/.config/alacritty/alacritty.yml"
zsh_config_file_path="~/.zshrc"
lf_config_folder_path="~/.config/lf/"
kitty_config_file_path="~/.config/kitty/kitty.conf"
k9s_config_folder_path="~/.config/k9s/"
nvim_config_folder_path="~/.config/nvim/"
nvim_theme_folder_path=" ~/.local/share/nvim/site/autoload/airline/theme"

# alacritty
cat ./dotfiles/alacritty/alacritty.yml >> $alacritty_config_file_path

# lf
cp ./dotfiles/lf/* $lf_config_folder_path

# kitty
cat ./dotfiles/kitty/kitty.conf >> $kitty_config_file_path

# k9s
cp ./dotfiles/k9s/skin.yml $k9s_config_folder_path

# zsh
cat ./dotfiles/zshrc >> $zsh_config_file_path

# nvim
cp ./dotfiles/nvim/init.vim $nvim_config_folder_path
mkdir -p $nvim_theme_folder_path
cp ./dotfiles/nvim/tokyonight.vim $nvim_theme_folder_path

# tmux
cp -r ./dotfiles/tmux/ ~/
cd
mv ./tmux ./.tmux
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
