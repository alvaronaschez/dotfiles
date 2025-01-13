sudo apt-get update -yq && sudo apt-get dist-upgrade -yq

sudo apt-get install -yq git

# git clone https://github.com/alvaronaschez/dotfiles

sudo apt-get install -yq \
tmux \
stow \
curl \
fonts-hack \
foot \
manpages-dev \
info \
make \
build-essential \
ranger \
qutebrowser \
neofetch \
zsh \
zsh-autosuggestions \
zsh-syntax-highlighting
# vim-gtk3 \
# git \

sudo apt-get install -yq \
gcc \
clang-format \
cscope \
cmake \
universal-ctags \
python3-pygments

sudo apt-get install -yq \
zip \
unzip \
xz-utils

# sudo apt-get install -yq transmission-gtk

sudo apt-get install -yq ripgrep less fzf bat

sudo apt-get install -yq waylock xdg-desktop-portal-wlr xwayland wdisplays tofi swayidle brightnessctl \
sway-notification-center swayimg grimshot blueman

deb http://deb.debian.org/debian bookworm-backports main
sudo apt-get update
sudo apt-get install -yq mpv yt-dlp/bookworm-backports

sudo apt-get install -yq \
pulseaudio-utils \
pavucontrol \
pamixer \
net-tools

sudo apt-get install -yq vlc obs-studio evince evince-previewer nautilus

sudo apt-get install -yq luarocks

sudo apt-get install -yq \
qemu-system \
libvirt-daemon-system \
virt-manager

chsh -s $(which zsh)

## install docker following official website instructions
# docker-desktop.deb
# docker-buildx-plugin
# docker-ce
# docker-ce-cli
# docker-compose-plugin
# containerd.io

# vieb
# balena-etcher
# chrome
