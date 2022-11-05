#! /bin/bash

alacritty_config_file_path="~/.config/alacritty/alacritty.yml"
zsh_config_file_path="~/.zshrc"
lf_config_folder_path="~/.config/lf/"
kitty_config_file_path="~/.config/kitty/kitty.conf"
k9s_config_folder_path="~/.config/k9s/"

# Setting configurations
cat ./dotfiles/alacritty/alacritty.yml >> alacritty_config_file_path
cp ./dotfiles/lf/* lf_config_folder_path
cat ./dotfiles/kitty/kitty.conf >> kitty_config_file_path
cp ./dotfiles/k9s/skin.yml k9s_config_folder_path
cat ./dotfiles/zshrc >> zsh_config_file_path
# tmux
cp -r ./dotfiles/tmux/ ~/
cd
mv ./tmux ./.tmux
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
