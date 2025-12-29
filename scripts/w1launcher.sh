#!/usr/bin/env bash

hyprctl dispatch workspace 1

launch_if_not_running() { 
    local process_name="$1"
    local title="$2"
    local _command="$3"

    if ! pgrep -x "$process_name" > /dev/null; then
        hyprctl dispatch exec "alacritty --title "$title" --hold -e bash -c "$_command" &"
    fi
}

#hyprctl dispatch killwindow title:Fastfetch # kill current Fastfetch window

#hyprctl dispatch exec "alacritty --title Fastfetch --hold -e fastfetch --logo none" 

#sleep 0.05

launch_if_not_running "cava" "Cava" "cava"

#sleep 0.05

# if ! pgrep -x spotify > /dev/null; then 
# 	hyprctl dispatch exec "alacritty --title "spotify-launcher" --hold -e bash -c "/usr/bin/spotify-launcher" &" 
# sleep 0.35
# hyprctl dispatch killwindow title:spotify-launcher
# fi

launch_if_not_running "spotify_player" "Spotify" "/usr/bin/spotify_player"

hyprctl dispatch focuswindow title:"Spotify"
