#!/bin/zsh

function battery(){
    info=$(upower -i $(upower --enumerate | grep BAT))
    power_supply=$(echo $info| grep power\ supply | awk '{print $3}')
    if [ "$power_supply" = "yes" ]; then power_supply=plugged; else power_supply=unplugged; fi
    state=$(echo $info| grep state | awk '{print $2}')
    percentage=$(echo $info| grep percentage | awk '{print $2}')
    echo "$state $percentage $power_supply"
}

function wifi(){
    #interface=$(nmcli connection show | egrep 'wifi|ethernet' | awk '{print $4}')
    interface=$(ip route | awk '/^default via/ {print $5}')
    interface=$(nmcli connection show | grep $interface | awk '/wifi/ {print $4}')
    quality=$(iw dev $interface link | grep 'dBm$' | grep -Eoe '-[0-9]{2}' | awk '{print  ($1 > -50 ? 100 :($1 < -100 ? 0 : ($1+100)*2))}')
    echo wifi: $quality%
}

date=$(date +'%Y-%m-%d %a %H:%M:%S')

sound=$(pamixer --get-volume-human)

echo  $(wifi wlp1s0) \| sink\ $sound \| $(battery) \| $date

