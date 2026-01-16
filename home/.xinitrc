export LC_ALL="en_US.UTF-8"
setxkbmap -layout "us(altgr-intl)"
xsetroot -solid black &
xrandr --output HDMI-2 --left-of eDP-1
# man xkeyboard-config
setxkbmap -option ctrl:nocaps
# setxkbmap -option ctrl:swapcaps

exec i3
