#!/usr/bin/env bash

rofi_command="rofi -dmenu -p Power"

options="Shutdown\nReboot\nLogout"

chosen="$(echo -e "$options" | $rofi_command)"
case $chosen in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Logout) hyprctl dispatch exit ;;
esac
