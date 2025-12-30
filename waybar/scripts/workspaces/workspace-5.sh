#!/bin/bash

active=$(hyprctl activeworkspace -j | jq '.id')

if [ "$active" -eq 6 ]; then
  echo "<span foreground='#ff5ccc'>󰬾</span>"
else
  echo "󰬾"
fi
