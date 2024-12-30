foo=$(upower -i $(upower --enumerate | grep BAT) | grep 'power\ supply' | awk '{print $3}')
if [ "$foo" = "yes" ]; then bar=plugged; else bar=unplugged; fi
battery=$(upower -i $(upower --enumerate | grep BAT) | egrep 'state|percentage' | awk '{print $2}')
# battery=$(upower -i $(upower --enumerate | grep BAT) | egrep state | awk '{print $2}')
date=$(date +'%a %Y-%m-%d %I:%M:%S %p')

echo $battery $bar \| $date
