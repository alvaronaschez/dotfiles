# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.


function __confirm() {
	echo "About to execute '${@:1}'"
	echo -n "Would you like to proceed y/n? "
	read reply

	if [ "$reply" = y -o "$reply" = Y ]
	then
	   "${@:1}"
	else
	   echo "'${@:1}' cancelled"
	fi
}

# function untargz() { tar xzf $1 --one-top-level }
# function untargz() { tar xf $1 }


alias start="exec sway"
alias sd="__confirm shutdown now"
alias rs="__confirm shutdown -r now"
alias rb=rs

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias rg="rg --color=auto"

alias v=vim
alias nv=nvim
alias tx=tmux
alias tm=tmux
alias vmore="vim -u ~/.config/vim/vimrc.more -"
alias bat=batcat
alias sbcl-repl="rlwrap sbcl"
alias luajit-repl="rlwrap luajit"
alias untargz="tar xf"

alias update="sudo apt-get update"
alias upgrade="sudo apt-get dist-upgrade"
alias autoclean="sudo apt-get autoclean"
alias autoremove="sudo apt autoremove"
alias install="sudo apt-get install"
alias remove="sudo apt-get purge --autoremove"
alias uninstall=remove
alias search="apt-cache search"
# see 'man 5 sources.list'
alias edit-sources="sudo vim /etc/apt/sources.list"
# alias installed="apt list --installed"
# alias showmanual="apt-mark showmanual"
# alias showauto="apt-mark showauto"
alias installed="comm -12 <(history | grep install\\s | sed -e 's/^.*install\s//' -e 's/\s/\n/g' | sort -u) <(apt-mark showmanual | sort -u)"

alias dprune="docker system prune -af && docker volume prune -af && docker image prune -af"

alias git-delete-all-branches-except-current='git branch -D $(git branch)'

#https://vim.fandom.com/wiki/Generate_ctags_file_for_a_C/C%2B%2B_source_file_with_all_of_their_dependencies_(standard_headers,_etc)
alias ctagsc="ctags -R --kinds-C=+p --fields=+iaS --extras=+q /usr/include /usr/include/x86_64-linux-gnu/ ."
alias cdd="cd ~/dotfiles"
alias cddot=cdd
alias cdz="cd ~/.config/zsh"
alias cdw="cd ~/Workspace"
alias cdb="cd ~/Bookshelf"
alias cddown="cd ~/Downloads"
alias cdsway="cd ~/.config/sway"
alias cdsy=cdsway
alias cdsw=cdsway
alias cdnv="cd ~/.config/nvim"
alias cdv="cd ~/.config/vim"
alias cds="cd ~/Scripts"
# alias cdk="cd ~/Workspace/linux/kernel/stable"

alias vz="v ~/.config/zsh/config.zsh"
alias vzsh=vz
alias val="v ~/.config/zsh/aliases.zsh"
alias val="v ~/.config/zsh/aliases.zsh"
alias vsway="v ~/.config/sway/config"
alias vfoot="v ~/.config/foot/foot.ini"
alias vvim="v ~/.config/vim/vimrc"
alias nvnvim="nv ~/.config/nvim/init.lua"
alias vtmux="v ~/.config/tmux/tmux.conf"
alias vgit="v ~/.config/git/config"
alias vranger="v ~/.config/ranger/rifle.conf"
alias vneofetch="v ~/.config/neofetch/config.conf"
alias vscratch="v ~/scratchpad.txt"
alias vtofi="v ~/.config/tofi/config"
alias vvieb="v ~/.config/Vieb/viebrc"
alias vkeyd="v ~/.config/keyd/config"

alias szsh="source ~/.zshrc"
alias stmux="tmux source ~/.config/tmux/tmux.conf"
alias ssway="sway reload"
alias skeyd="sudo keyd reload"

alias mount-kobo="sudo mount /dev/sda /media/alvaro/kobo"
alias unmount-kobo="sudo umount /media/alvaro/kobo"

# show help
alias hh="echo '\
vieb - web browser
qutebrowser - web browser
blueman-manager - bluetooth
pavucontrol - sound
nmtui - network
wdisplays - displays
evince - pdf reader
mpv - video player
grep
sed
awk

remember to use \"sudoedit foo\" or \"sudo -e foo\" instead of \"sudo vim foo\"

# mount/unmount devices
lsblk - list block devices
df - report system space usage
mount - list all mounted devices
sudo mount /dev/sda /media/alvaro/kobo
sudo umount /media/alvaro/kobo

'"

