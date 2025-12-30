#!/usr/bin/env bash

WIFI_STATUS=$(nmcli radio wifi | awk '{print $NF}')

if [ "$WIFI_STATUS" = "enabled" ]; then
    nmcli radio wifi off
else
    nmcli radio wifi on
fi

pkill -RTMIN+8 waybar
