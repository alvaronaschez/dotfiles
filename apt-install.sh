sudo apt-get update -y && sudo apt-get dist-upgrade -y

sudo apt-get install -y git

# git clone https://github.com/alvaronaschez/dotfiles

sudo apt-get install -y \
tmux \
# vim-gtk3 \
stow \
# git \
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
zsh-syntax-highligting

sudo apt-get install -y \
gcc \
clang-format \
cscope \
cmake \
universal-ctags \
python3-pygments

sudo apt-get install -y \
zip \
unzip \
xz-utils

# sudo apt-get install -y transmission-gtk

sudo apt-get install -y ripgrep less fzf bat

sudo apt-get install -y waylock xdg-desktop-portal-wlr xwayland wdisplays tofi swayidle brightnessctl \
sway-notification-center swayimg grimshot blueman

deb http://deb.debian.org/debian bookworm-backports main
sudo apt-get update
sudo apt-get install -y mpv yt-dlp/bookworm-backports

sudo apt-get install -y \
pulseaudio-utils \
pavucontrol \
pamixer \
net-tools

sudo apt-get install -y vlc obs-studio evince evince-previewer nautilus

sudo apt-get install -y luarocks

sudo apt-get install -y \
qemu-system \
libvirt-daemon-system \
virt-manager

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
