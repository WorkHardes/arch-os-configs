#! /bin/bash

alacritty_config_path=~/.config/alacritty/
zsh_config_path=~/
lf_config_path=~/.config/lf/
kitty_config_path=~/.config/kitty/
k9s_config_path=~/.config/k9s/
nvim_config_path=~/.config/nvim/
nvim_theme_path=~/.local/share/nvim/site/autoload/airline/theme/

# alacritty
mkdir -p ~/.config/alacritty/
cp ./dotfiles/alacritty/alacritty.yml $alacritty_config_path

# lf
mkdir -p ~/.config/lf/
cp ./dotfiles/lf/* $lf_config_path

# kitty
mkdir -p ~/.config/kitty/
cp ./dotfiles/kitty/kitty.conf $kitty_config_path

# k9s
mkdir -p ~/.config/k9s/
cp ./dotfiles/k9s/skin.yml $k9s_config_path

# zsh
cp ./dotfiles/zsh/.zshrc  $zsh_config_path

# nvim
mkdir -p ~/.config/nvim/
cp ./dotfiles/nvim/init.vim $nvim_config_path
mkdir -p $nvim_theme_path
cp ./dotfiles/nvim/tokyonight.vim $nvim_theme_path

# tmux
cp -r ./dotfiles/tmux/ ~/
cd
mv ./tmux ./.tmux
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
