#!/usr/bin/bash

sudo apt-get install -qq python3-setuptools -y
sudo apt-get install -qq imagemagick -y
git clone https://github.com/ranger/ranger.git
mkdir -p ~/.local/src
mv ranger ~/.local/src
cd ~/.local/src/ranger
sudo make install

