# https://sureshjoshi.com/development/zsh-prompts-that-dont-suck
autoload -Uz add-zsh-hook vcs_info
precmd() { vcs_info }

# Set prompt substitution so we can use the vcs_info_message variable
setopt prompt_subst

# Run the `vcs_info` hook to grab git info before displaying the prompt
add-zsh-hook precmd vcs_info

# Style the vcs_info message
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '[%F{magenta}%b%u%c%f%m]'
# Format when the repo is in an action (merge, rebase, etc)
zstyle ':vcs_info:git*' actionformats '[%F{magenta}%b|%a%u%c%f]'

zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'
# This enables %u and %c (unstaged/staged changes) to work,
# but can be slow on large repos
zstyle ':vcs_info:*:*' check-for-changes true

# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples

### Hook Examples ############################################################

# A number of examples in this file revolve around the concept of `hooks'
# in vcs_info. Hooks are places in vcs_info where you may put in your
# own code to achieve something "totally awesome"[tm].
#
# Hooks can be confusing. It's hard to keep track of what's going on.
# In order to help you with that vcs_info can output some debugging
# information when it processes hooks. This will tell you which hooks
# are being run and which functions are attempted to run (and if the
# functions in question were found or not).
#
# If you feel like you need to see what's attempted and where, I suggest
# you use the following line and see for yourself.
# zstyle ':vcs_info:*+*:*' debug true

# You can just comment it out (or disable it) again when you've seen enough.
# Debugging is off by default - of course.
# zstyle ':vcs_info:*+*:*' debug false

### Display the existence of files not yet known to VCS

### git: Show marker (T) if there are untracked files in repository
# Make sure you have added staged to your 'formats':  %c
# zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep -q '^?? ' 2> /dev/null ; then
        # This will show the marker if there are any untracked files in repo.
        # If instead you want to show the marker only if there are untracked
        # files in $PWD, use:
        #[[ -n $(git ls-files --others --exclude-standard) ]] ; then
        hook_com[staged]+='?'
    fi
}


### Compare local changes to remote changes

### git: Show +N/-N when your local branch is ahead-of or behind remote HEAD.
# Make sure you have added misc to your 'formats':  %m
# zstyle ':vcs_info:git*+set-message:*' hooks git-st
function +vi-git-st() {
    local ahead behind
    local -a gitstatus

    # Exit early in case the worktree is on a detached HEAD
    git rev-parse ${hook_com[branch]}@{upstream} >/dev/null 2>&1 || return 0

    local -a ahead_and_behind=(
        $(git rev-list --left-right --count HEAD...${hook_com[branch]}@{upstream} 2>/dev/null)
    )

    ahead=${ahead_and_behind[1]}
    behind=${ahead_and_behind[2]}

    (( $ahead )) && gitstatus+=( "+${ahead}" )
    (( $behind )) && gitstatus+=( "-${behind}" )

    hook_com[misc]+=${(j:/:)gitstatus}
}

zstyle ':vcs_info:git*+set-message:*' hooks git-st git-untracked


PROMPT='%(?.%F{green}».%F{red}»)%f [%F{blue}%~%f] ${vcs_info_msg_0_}
$ '

