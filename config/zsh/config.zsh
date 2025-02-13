
export -U PATH=$PATH:/usr/sbin
export -U PATH=$PATH:~/.local/bin

# disable Ctrl-S stop signal
stty stop ""

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

export EDITOR='vim'
# if [[ -n $SSH_CONNECTION || -z $DISPLAY ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi


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
source ~/.config/zsh/omz.directories.zsh
source ~/.config/zsh/omz.history.zsh


# Keybindings --------------------------------------------------------------------------------------
# run 'bindkey' alone to print all keybindings

bindkey -v # vi mode
### https://unix.stackexchange.com/a/593120
# Remove mode switching delay.
KEYTIMEOUT=5
#function _set_cursor() {
#  echo -ne $1
#}
function _set_cursor() {
    if [[ $TMUX = '' ]]; then
      echo -ne $1
    else
      echo -ne "\ePtmux;\e\e$1\e\\"
    fi
}
## cursor style
# Set cursor style (DECSCUSR), VT520.
# 0  ⇒  blinking block.
# 1  ⇒  blinking block (default).
# 2  ⇒  steady block.
# 3  ⇒  blinking underline.
# 4  ⇒  steady underline.
# 5  ⇒  blinking bar, xterm.
# 6  ⇒  steady bar, xterm.
function _set_block_cursor() { _set_cursor '\e[2 q' }
function _set_bar_cursor() { _set_cursor '\e[5 q' }

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]]; then
      _set_block_cursor
  else
      _set_bar_cursor
  fi
}
zle -N zle-keymap-select
# ensure beam cursor when starting new terminal
precmd_functions+=(_set_bar_cursor) #
# ensure insert mode and beam cursor when exiting vim
zle-line-init() { zle -K viins; _set_bar_cursor }
zle-line-finish() { _set_block_cursor }
zle -N zle-line-finish


# Startup ------------------------------------------------------------------------------------------


# neofetch
# figlet alvaro sanchez
# fortune | cowsay -pf www


