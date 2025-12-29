#!/usr/bin/env bash

if [ $(pwd) != "/home/evan/Notes" ]; then 
	cd ~/Notes
fi

hyprctl dispatch exec "alacritty -e bash -c 'cd ~/Notes; nvim \"New-Note-"$(date +'%Y-%m-%d-%H%M%S')"\"'"

