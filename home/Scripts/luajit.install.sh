#!/usr/bin/zsh

git clone https://luajit.org/git/luajit.git /tmp/luajit

# run this part in a subshell
(cd /tmp/luajit
make
sudo make install)

rm -rf /tmp/luajit

