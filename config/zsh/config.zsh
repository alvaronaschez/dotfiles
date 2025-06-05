
export -U PATH=$PATH:/usr/sbin
export -U PATH=$PATH:~/.local/bin
export -U PATH=$PATH:~/go/bin

# disable Ctrl-S stop signal
stty stop ""


#https://unix.stackexchange.com/questions/20298/home-key-not-working-in-terminal
bindkey '[H'    beginning-of-line  # gnome-terminal
bindkey '[F'    end-of-line        # gnome-terminal


## https://github.com/NNBnh/kickstart.zsh/tree/main
# A launch point for your personal .zshrc

# autoload -Uz compinit && compinit
# autoload -Uz promptinit && promptinit

# # History settings
source ~/.config/zsh/omz.history.zsh
# export HISTSIZE=50000
# export SAVEHIST=10000

# Set default editor/pager.
# Preferred editor for local and remote sessions
export PAGER=less
#export PAGER="vim -u ~/.config/vim/vimrc.more -"
export MANPAGER="vim +MANPAGER --not-a-term -"
#export PAGER=batcat

#export EDITOR='vim'
if [[ -n $SSH_CONNECTION || -z $DISPLAY ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export VISUAL=nvim

# Options ------------------------------------------------------------------------------------------
# # Completion.
# setopt always_to_end             # If a completion is performed and a full completion is inserted, the cursor is moved to the end of the word.
# setopt auto_menu                 # Show completion menu on successive tab press.
# setopt complete_in_word          # The cursor isn't set to the end of the word if completion is started.
# 
# # Expansion and Globbing.
# setopt extended_glob             # Treat the '#', '~' and '^' characters as part of patterns for filename generation, etc.
# setopt glob_dots                 # Do not require a leading '.' in a filename to be matched explicitly.

# # Misc.
# setopt long_list_jobs            # Print job notifications in the long format by default.
setopt interactive_comments      # Allow comments even in interactive shells.


export RANGER_LOAD_DEFAULT_RC=FALSE # only read config from ~/.config/ranger # see man ranger


# Prompt -------------------------------------------------------------------------------------------
source ~/.config/zsh/prompt.zsh


# Aliases ------------------------------------------------------------------------------------------

alias _="sudo "
alias dl='trash-put'
# alias md='mkdir -p'

source ~/.config/zsh/aliases.zsh


# Functions ----------------------------------------------------------------------------------------

# # Convenient selection for files management.
# s() { selection=(); for item in "$@"; do selection+=("$(readlink -f "${item}")"); done }
# mv() { if [ "$#" -eq 0 ]; then command mv -i  "${selection[@]}" .; else command mv -i  "$@"; fi }
# cp() { if [ "$#" -eq 0 ]; then command cp -ir "${selection[@]}" .; else command cp -ir "$@"; fi }
# ln() { if [ "$#" -eq 0 ]; then command ln -s  "${selection[@]}" .; else command ln -s  "$@"; fi }

# Ls whenever the current working directory is changed.
# chpwd() { l; }


# Plugins ------------------------------------------------------------------------------------------

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/git.plugin.zsh
source ~/.config/zsh/vi-mode.plugin.zsh
source ~/.config/zsh/omz.directories.zsh
source ~/.config/zsh/omz.history.zsh
source ~/.config/zsh/vi-mode.plugin.zsh
VI_MODE_SET_CURSOR=true
#MODE_INDICATOR="%F{white}$%f"
#INSERT_MODE_INDICATOR="%f$"
MODE_INDICATOR="%F{#666}$%f"
#INSERT_MODE_INDICATOR="%F{#0f0}$"
INSERT_MODE_INDICATOR="%F{#fff}$%f"

# Keybindings --------------------------------------------------------------------------------------
# run 'bindkey' alone to print all keybindings

KEYTIMEOUT=15 # set ESC timeout to 0.15s (default value is 0.4s)

# Startup ------------------------------------------------------------------------------------------


source ~/.config/zsh/pyenv.zsh
source ~/.config/zsh/nvm.zsh
source ~/.config/zsh/sdkman.zsh
# neofetch
# figlet alvaro sanchez
# fortune | cowsay -pf www


