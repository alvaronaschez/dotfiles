#!/usr/bin/bash

stow -R -t ~ -d ~/dotfiles/home .
stow -R -t ~/.config -d ~/dotfiles/config .
