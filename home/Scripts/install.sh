#!/usr/bin/zsh

if [ -d ~/Scripts ]; then;
  echo 'do not run this script twice!'
  return 0
fi

# sudo apt-get update -yq && sudo apt-get dist-upgrade -yq
# sudo apt-get install -yq git
# git clone https://github.com/alvaronaschez/dotfiles

sudo apt-get update -yq && sudo apt-get dist-upgrade -yq

# IMPORTANT
# edit /etc/network/interfaces comment out lines about wifi
# so network-manager can manage it
# or just delete it:
sudo rm /etc/network/interfaces

sudo apt install -yqq software-properties-common
sudo add-apt-repository -y contrib non-free non-free-firmware
#sudo add-apt-repository -y "deb http://deb.debian.org/debian bookworm-backports main"
sudo apt-get update -yqq

~/dotfiles/Scripts/apt-install.sh

# set zsh as the default shell
chsh -s $(which zsh)


# so stow can work properly
# use 'mkdir -p' so you don't get any error if the directory already exists
mkdir -p ~/.config
mkdir -p ~/Documents

## run installation scripts
~/dotfiles/Scripts/tmux-install-or-update.sh
#~/dotfiles/Scripts/vieb-install-or-update.sh
#~/dotfiles/Scripts/qutebrowser-install.sh
~/dotfiles/Scripts/hacker-font-install.sh
~/dotfiles/Scripts/vim-plug-install.sh
# ~/dotfiles/Scripts/luajit-install.sh
# pyenv
# nvm

# this is needed so virt-manager works properly
sudo usermod -aG libvirt $USER && sudo usermod -aG kvm $USER\n


## install
# neovim & lua_ls
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-64.tar.gz
# -> tar xf nvim-linux64.tar.gz
# -> tar xf lua-language-server-3.13.5-linux-x64.tar.gz


### manual install
# docker ## better use podman
# balena-etcher
# chrome ## better use firefox and librewolf
# pyenv ipython nvm sdkman

# this is stored in '~/.config/dconf/user' binary file, so no file backup possible
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# stow -R .
echo 'IMPORTANT: remember to edit /etc/network/interfaces comment out lines about wifi'
echo 'otherwise network manager is not going to be able to manage your internet connection properly'
