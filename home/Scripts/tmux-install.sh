#!/usr/bin/zsh

git clone --depth 1 https://github.com/tmux/tmux.git
sudo apt-get install -qq autoconf automake pkg-config -y
sudo apt-get install -qq libevent-dev ncurses-dev build-essential bison pkg-config -y
mv tmux ~/.local/src
cd ~/.local/src/tmux
sh autogen.sh
./configure --enable-sixel && make
# sudo make uninstall # if we have to uninstall previous version
sudo make install

