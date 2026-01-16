export PATH=$PATH:$HOME/bin
export ENV=$HOME/.kshrc

export LANG="en_US.UTF-8"
setxkbmap -layout "us(altgr-intl)"
xsetroot -solid black &
xrandr --output HDMI-2 --left-of eDP-1
# man xkeyboard-config
setxkbmap -option ctrl:nocaps
# setxkbmap -option ctrl:swapcaps

i3
