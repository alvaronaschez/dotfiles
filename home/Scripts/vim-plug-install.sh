#!/usr/bin/zsh

if [ -f ~/.vim/autoload/plug.vim ]; then;
    echo 'plug.vim already installed'
    return 0
fi

# https://github.com/junegunn/vim-plug
# just backup ~/.vim/autoload/plug.vim?
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# open vim and run :PlugInstall
# vim -c PlugInstall

