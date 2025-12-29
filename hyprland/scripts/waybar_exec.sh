#!/usr/bin/env bash

if ! pgrep -x "waybar" > /dev/null; then
	hyprctl dispatch exec "waybar"
fi

