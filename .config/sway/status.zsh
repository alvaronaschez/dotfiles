#!/bin/zsh

function battery(){
    info=$(upower -i $(upower --enumerate | grep BAT))
    power_supply=$(echo $info| grep power\ supply | awk '{print $3}')
    if [ "$power_supply" = "yes" ]; then power_supply=plugged; else power_supply=unplugged; fi
    state=$(echo $info| grep state | awk '{print $2}')
    percentage=$(echo $info| grep percentage | awk '{print $2}')
    echo "$state $percentage $power_supply"
}

date=$(date +'%Y-%m-%d %a %H:%M:%S')

sound=$(pamixer --get-volume-human)

echo  sink\ $sound \| $(battery) \| $date

