git clone https://github.com/tmux/tmux.git
mv tmux /tmp
(cd /tmp/tmux
sh autogen.sh
sudo apt-get install libevent-dev byacc
./configure --enable-sixel && make)
sudo make install
# sudo cp /tmp/tmux /usr/local/bin
rm -drf /tmp/tmux

