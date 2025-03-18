#!/usr/bin/env bash
 
RUNNING=$(pgrep swayidle)
 
if [ $RUNNING ]; then
    pkill swayidle
    notify-send "System Suspension Disabled."
else
    notify-send "System Suspension Enabled."
    swayidle -w timeout 840 'notify-send -c suspend "suspend in 60 seconds"' timeout 900 'powermenu suspend' resume 'swaymsg "output * dpms on"' &
fi

