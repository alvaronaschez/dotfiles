# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

function run() {
	# run in background and write logs to ~/log file
	eval "$@ &>> ~/log &"
}
alias clean-logs="echo '' > ~/log"

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
alias st=start
alias sd="__confirm shutdown now"
alias rs="__confirm shutdown -r now"
alias rb=rs

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias hl="rg --passthru"

alias repl=rlwrap
alias xsh=xonsh

alias v="VIMRUNTIME=~/src/vim/runtime ~/src/vim/src/vim"
# https://www.rahuljuliato.com/posts/launching-emacs-terminal
alias emd="emacs --daemon"
#alias em="emacsclient -t"
#alias emg="emacsclient -c"
# using the following aliases you don't need to start the daemon beforehand
alias em="emacsclient -t -a ''"
alias emg="emacsclient -c -a ''"
alias nv=nvim
alias tx=tmux
alias tm=tmux
alias vmore="vim -u ~/.config/vim/vimrc.more -"
alias bat=batcat
alias sbcl-repl="rlwrap sbcl"
alias luajit-repl="rlwrap luajit"
alias untargz="tar xf"
alias sound="pavucontrol"
alias audio="pavucontrol"
alias lw="run librewolf"

alias update="sudo apt-get update"
alias upgrade="sudo apt-get dist-upgrade"
alias autoclean="sudo apt-get autoclean"
alias autoremove="sudo apt autoremove"
alias install="sudo apt-get install"
alias install-backports="sudo apt-get install -t bookworm-backports"
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
alias cddoc="cd ~/Documents"
alias cddown="cd ~/Downloads"
alias cdsway="cd ~/.config/sway"
alias cdsy=cdsway
alias cdsw=cdsway
alias cdnv="cd ~/.config/nvim"
alias cdv="cd ~/.config/vim"
alias cds="cd ~/Scripts"
# alias cdk="cd ~/Workspace/linux/kernel/stable"

alias vz="vi ~/.config/zsh/config.zsh"
alias vzsh=vz
alias val="vi ~/.config/zsh/aliases.zsh"
alias val="vi ~/.config/zsh/aliases.zsh"
alias vsway="vi ~/.config/sway/config"
alias vfoot="vi ~/.config/foot/foot.ini"
alias vvim="vi ~/.config/vim/vimrc"
alias nvnv="nv ~/.config/nvim/init.lua"
alias vtmux="vi ~/.config/tmux/tmux.conf"
alias vgit="vi ~/.config/git/config"
alias vranger="vi ~/.config/ranger/rifle.conf"
alias vneofetch="vi ~/.config/neofetch/config.conf"
alias vscratch="vi ~/scratchpad.txt"
alias vtofi="vi ~/.config/tofi/config"
alias vvieb="vi ~/.config/Vieb/viebrc"
alias vkeyd="vi ~/.config/keyd/config"

alias szsh="source ~/.zshrc"
alias stmux="tmux source ~/.config/tmux/tmux.conf"
alias ssway="swaymsg reload"
alias skeyd="sudo keyd reload"

alias wk="vim ~/vimwiki/index.wiki"

alias rr=ranger
alias rrb="ranger ~/Bookshelf"
alias rrw="ranger ~/Documents/backgrounds"

alias kbm="sudo mount /dev/sda /media/alvaro/kobo"
alias kbum="sudo umount /media/alvaro/kobo"
alias kbcd="cd /media/alvaro/kobo"

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
btop

remember to use \"sudoedit foo\" or \"sudo -e foo\" instead of \"sudo vim foo\"

# mount/unmount devices
lsblk - list block devices
df - report system space usage
mount - list all mounted devices
sudo mount /dev/sda /media/alvaro/kobo
sudo umount /media/alvaro/kobo

'"

