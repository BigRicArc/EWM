
#!/bin/sh

x=1

while [ $x -lt 2 ]; do

	char=$(cat /sys/class/power_supply/BAT0/status)
	
		if [[ $char = "Charging" ]]
		then
			ind="+"
		else
			ind="-"
		fi


	vol=$(amixer | grep "Left: Playback" | awk '{print $5}')
	time=$(date '+%a %d %b %I:%M %p')
	bright=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
	light=$(( (bright*100 ) / 255 ))
	bat=$(cat /sys/class/power_supply/BAT0/capacity)
	xsetroot -name " Vol $vol | Bright $light% | Batt $bat% $ind | $time "
	sleep 10
	
done 
