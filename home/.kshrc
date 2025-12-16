#PS1="\w \$ "
#PS1='$(echo $PWD | sed "s,$HOME,~,") $ '
PS1='[1;32m$(echo $PWD | sed "s,$HOME,~,") $[0m '
#PS1='$(echo $PWD | sed "s,$HOME,~,") [1;32m$[0m '

EDITOR=nvim
VISUAL=nvim

. ~/.alias
