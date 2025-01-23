#!/usr/bin/zsh

IFS=$'\n'       # make newlines the only separator
set -f          # disable globbing
for packages in $(cat apt-packages.txt | sed 's/#.*$//g;/^\s*$/d'); do
  sudo apt install -q $packages
done

