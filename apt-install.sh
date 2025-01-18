# sudo apt-get update -yq && sudo apt-get dist-upgrade -yq
# sudo apt-get install -yq git
# git clone https://github.com/alvaronaschez/dotfiles

sudo apt-get update -yq && sudo apt-get dist-upgrade -yq


sudo apt-get install -yq \
tmux \
stow \
curl \
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
zsh-syntax-highlighting \
vim-gtk3
# git


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
xz-utils \
trash-cli # https://github.com/andreafrancia/trash-cli

# sudo apt-get install -yq transmission-gtk

sudo apt-get install -yq ripgrep less fzf bat

# IMPORTANT
# edit /etc/network/interfaces comment out lines about wifi
# or just delete it:
sudo rm /etc/network/interfaces
# TODO: find a better solution
sudo apt-get install -yq network-manager \
swaylock xdg-desktop-portal-wlr xwayland wdisplays tofi swayidle brightnessctl \
sway-notification-center swayimg grimshot i3blocks\
blueman libspa-0.2-bluetooth # https://askubuntu.com/a/1480049

sudo apt-get install -yq software-properties-common
sudo add-apt-repository -y "deb http://deb.debian.org/debian bookworm-backports main"
sudo apt-get update -yq
sudo apt-get install -yq mpv yt-dlp/bookworm-backports

sudo apt-get install -yq \
pulseaudio-utils \
pavucontrol \
pamixer \
net-tools

sudo apt-get install -yq vlc obs-studio evince nautilus foliate

sudo apt-get install -yq luarocks

sudo apt-get install -yq \
qemu-system \
libvirt-daemon-system \
virt-manager


## install Hack nerd-font
# github.com/ryanoasis/nerd-fonts
# apt-get install -yq fonts-hack # this doesn't come with glyphs
# just backup ~/.local/share/fonts folder?
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Regular.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Regular/HackNerdFontMono-Regular.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Bold.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Bold/HackNerdFontMono-Bold.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Italic.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Italic/HackNerdFontMono-Italic.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-BoldItalic.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/BoldItalic/HackNerdFontMono-BoldItalic.ttf


# https://github.com/junegunn/vim-plug
# just backup ~/.vim/autoload/plug.vim?
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

chsh -s $(which zsh)


# run this just after running this script
mkdir -p ~/.config # so stow can work properly
stow -R .

### manual installation steps
# open vim and run :PlugInstall
## install
# neovim & lua_ls
# -> tar xzf nvim-linux64.tar.gz --one-top-level
# -> tar xzf lua-language-server-3.13.5-linux-x64.tar.gz --one-top-level
# vieb
# -> sudo apt install ~/Downloads/vieb_12.1.0_amd64.deb
# balena-etcher
# chrome
#
## install docker following official website instructions
# docker-desktop.deb
# docker-buildx-plugin
# docker-ce
# docker-ce-cli
# docker-compose-plugin
# containerd.io

echo 'IMPORTANT: remember to edit /etc/network/interfaces comment out lines about wifi'
echo 'otherwise network manager is not going to be able to manage your internet connection properly'
