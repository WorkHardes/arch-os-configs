#! /bin/bash

##################################
# Setting environment variables
pacman_packages="
alacritty \
neovim \
telegram-desktop \
discord \
flameshot \
qbittorrent \
okular \
vlc \
mpv \
python-poetry \
zsh
k9s
git
base-devel"

##################################
# Setup Helper Functions
check_root () {
    if [[ $EUID -ne 0 ]]; then
        echo -e "\nThis script must be run as root!\n" 
        exit 1
    fi
}

backup_dir() {
    if [ -d "$1" ]; then
        cp -r "$1" BACKUP_DIR
    fi
}

backup_file() {
    if [ -f "$1" ]; then
        cp -r "$1" BACKUP_DIR
    fi
}
##################################


##################################
# Make backups of everything before pulling all the files down
UUID=$(uuidgen)
BACKUP_DIR="$HOME/.config-backup/$UUID"
mkdir -p BACKUP_DIR

backup_file "$HOME/.zshrc"

##################################


##################################
# Set up the `config` alias, and clone the repo!
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=~'
if ! [ -d "$HOME/.dotfiles" ]; then
    git clone --bare git@github.com:WorkHardes/configs-scripts-git $HOME/.dotfiles
    config checkout
fi
##################################


##################################
check_root

# update and install packages
pacman -Suy --noconfirm
pacman -Suy --noconfirm $pacman_packages

# install and configure oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
configure zsh as defaut
chsh -s $(which zsh)
