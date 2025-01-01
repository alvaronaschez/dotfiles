
# dependencies:
-  brightnessctl swaylock swayidle
-  pulseaudio-utils pamixer
-  swayimg sway-notification-center grimshot
-  xdg-desktop-portal-wlr xwayland
-  !? qtwayland5 qt6-wayland

# control stuff
-  usb - udiskctl
-  bluetooth - blueman
    - From blueman-manager, go in View->Plugins and uncheck "StatusNotifierItem"
-  sound - pactl(pulseaudio-utils) pamixer pavucontrol
-  displays - wdisplays
-  network - nmtui nm-connection-editor nmcli
-  file explorer - ranger nautilus
-  document viewer - evince
-  video player - mpv
-  markdown - neovim + Glow plugin
-  markdown - lookatme? mdp? formiko?(heavy)

# TODO
-  usb
-  notifications?
-  launcher?
-  capture screen

# guis
- wdisplays  pavucontrol nmtui
