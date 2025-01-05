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

alias sd="__confirm shutdown now"
alias rs="__confirm shutdown -r now"
alias rb=rs

alias ls="ls --color=always"
# alias grep="grep --color=always"
alias rg="rg --color=always"

alias v=vim
alias nv=nvim
alias tx=tmux
alias tm=tmux
alias bat=batcat

alias update="sudo apt-get update"
alias upgrade="sudo apt-get dist-upgrade"
alias autoclean="sudo apt-get autoclean"
alias autoremove="sudo apt autoremove"
alias install="sudo apt-get install"
alias remove="sudo apt-get purge --autoremove"
alias uninstall=remove

alias dprune="docker system prune -af && docker volume prune -af && docker image prune -af"

alias git-delete-all-branches-except-current='git branch -D $(git branch)'

alias cdw="cd ~/Workspace"
alias cdb="cd ~/Bookshelf"
alias cdd="cd ~/Downloads"
alias cdsway="cd ~/.config/sway"
alias cdsy=cdsway
alias cdsw=cdsway
alias cddot="cd ~/dotfiles"
alias cdnv="cd ~/.config/nvim"
# alias cdk="cd ~/Workspace/linux/kernel/stable"

alias nvzsh="nv ~/.zshrc"
alias nvaliases="nv ~/.config/oh-my-zsh/custom/aliases.zsh"
alias nval=nvaliases
alias nvsway="nv ~/.config/sway/config"
alias nvfoot="nv ~/.config/foot/foot.ini"
alias nvvim="nv ~/.vimrc"
alias nvnvim="nv ~/.config/nvim/init.lua"
alias nvtmux="nv ~/.config/tmux/tmux.conf"
alias nvgit="nv ~/.config/git/config"
alias nvranger="nv ~/.config/ranger/rifle.conf"
alias nvneofetch="nv ~/.config/neofetch/config.conf"
alias nvscratch="nv ~/scratchpad.txt"

alias szsh="source ~/.zshrc"
alias stmux="tmux source ~/.config/tmux/tmux.conf"
alias ssway="sway reload"

# show help
alias hh="echo '\
vieb
qutebrowser
blueman-manager
pavucontrol
nm-connection-editor
wdisplays
evince
mpv'"
