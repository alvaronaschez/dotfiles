# Path to your Oh My Zsh installation.
export ZSH="$HOME/.config/oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="fino"
ZSH_THEME="asp"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# https://specifications.freedesktop.org/basedir-spec/latest/
export XDG_CONFIG_HOME=~/.config

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PAGER=batcat

# only read config from ~/.config/ranger
# see man ranger
export RANGER_LOAD_DEFAULT_RC=FALSE

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # st 
# # Suckless' Simple Terminal
# # make home key work
# # https://git.suckless.org/st/file/FAQ.html
# function zle-line-init () { echoti smkx }
# function zle-line-finish () { echoti rmkx }
# zle -N zle-line-init
# zle -N zle-line-finish

# neovim
# export PATH=$PATH:/usr/local/nvim/bin
# sudo ln -s  /usr/local/nvim/bin/nvim /usr/local/bin

# go
# export PATH=$PATH:/usr/local/go/bin
# sudo ln -s  /usr/local/go/bin/go /usr/local/bin
# sudo ln -s  /usr/local/go/bin/gofmt /usr/local/bin

# zellij
# export PATH=$PATH:/usr/local/zellij/bin
# sudo ln -s  /usr/local/zellij/bin/zellij /usr/local/bin

# flutter
# export PATH=$PATH:/usr/local/flutter/bin
# sudo ln -s /usr/local/flutter/bin/flutter /usr/local/bin
# sudo ln -s /usr/local/flutter/bin/dart /usr/local/bin

# manually installed stuff in /usr/local/bin
# neovim
# go
# zellij
# flutter

# manually installed stuff using .deb files
# vieb
# balena-etcher

