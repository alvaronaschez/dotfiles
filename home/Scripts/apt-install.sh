#!/usr/bin/zsh

IFS=$'\n'       # make newlines the only separator
set -f          # disable globbing
for packages in $(cat ~/dotfiles/home/Scripts/apt-packages.txt | sed 's/#.*$//g;/^\s*$/d'); do
  sudo apt-get install -qq $packages -y
done

