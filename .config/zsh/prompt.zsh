# https://sureshjoshi.com/development/zsh-prompts-that-dont-suck
# PROMPT='%(?.%F{green}⏺.%F{red}⏺)%f %~ > '
#
# Autoload zsh's `add-zsh-hook` and `vcs_info` functions
# (-U autoload w/o substition, -z use zsh style)
# autoload -Uz add-zsh-hook vcs_info
autoload -Uz vcs_info
precmd() { vcs_info }

# Set prompt substitution so we can use the vcs_info_message variable
setopt prompt_subst

# Run the `vcs_info` hook to grab git info before displaying the prompt
add-zsh-hook precmd vcs_info

# Style the vcs_info message
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '[%F{magenta}%b %u%c%f]'
# Format when the repo is in an action (merge, rebase, etc)
zstyle ':vcs_info:git*' actionformats '[%F{magenta}%b|%a %u%c%f]'

zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
# This enables %u and %c (unstaged/staged changes) to work,
# but can be slow on large repos
zstyle ':vcs_info:*:*' check-for-changes true

#SYMBOL=⭙
#SYMBOL=»
PROMPT='%(?.%F{green}⏺.%F{red}⏺)%f [%F{blue}%~%f] ${vcs_info_msg_0_}
> '

