#! /usr/bin/bash

rotate() {
	next_transform=$((($1 + 1) % $3));
	# turn monitor
	eval "hyprctl keyword monitor $2,preferred,auto,2,transform, $next_transform"
	# turn touch input
	hyprctl keyword input:tablet:transform $next_transform
	hyprctl keyword input:touchdevice:transform $next_transform
}

# seaching focused monitor
index=0
while [ $(hyprctl -j monitors | jq ".[$index].focused") = false]; do
	if [ $(hyprctl -j monitors | jq ".[$index].focused") = null ]; then
		exit 1
	fi
	index=$((index + 1))
done

mod=$1
# get name and current transform of focused monitor
name=$(hyprctl -j monitors | jq ".[$index].name")
transform=$(hyprctl -j monitors | jq ".[$index].transform")
name="${name%\"}"
name="${name#\"}"

rotate $transform $name $mod

# idk why but reloading waybar resets the wallpaper that somehow is wrongly scaled after rotation
pkill waybar && hyprctl dispatch exec waybar
