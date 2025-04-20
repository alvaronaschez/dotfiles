#!/usr/bin/bash
#sudo vi /etc/default/console-setup
##see manpages for console-setup
##FONTFACE="Terminus"
##FONTSIZE="10x20"
#sudo apt install git
#git clone https://github.com/alvaronaschez/dotfiles
cd ~/dotfiles
sudo apt-get -qq install make stow zsh -y 1> /dev/null
mkdir -p ~/.config
mkdir -p ~/Documents
rm ~/.bashrc
make 1> /dev/null
sudo apt-get install -qq vim-gtk3 -y 1> /dev/null
##vim :PlugInstall
vim +'PlugInstall --sync' +qa &> /dev/null
sudo apt-get install -qq software-properties-common -y 1> /dev/null
sudo add-apt-repository -y contrib non-free non-free-firmware 1> /dev/null
~/dotfiles/home/Scripts/apt-install.sh 1> /dev/null
git remote set-url origin git@github.com:alvaronaschez/dotfiles.git 1> /dev/null
sudo bash -c 'echo GRUB_BACKGROUND=/home/alvaro/Documents/backgrounds/deb1.png >> /etc/default/grub'
sudo update-grub 1> /dev/null
echo sudoedit /etc/network/interfaces # comment out wifi configuration lines
echo
echo sudo reboot # reboot in order to apply changes
echo
echo nmtui # configure network connection
echo
echo # generate ssh keys for github

