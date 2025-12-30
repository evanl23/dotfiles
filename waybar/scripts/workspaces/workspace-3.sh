#!/bin/bash

active=$(hyprctl activeworkspace -j | jq '.id')

if [ "$active" -eq 4 ]; then
  echo "<span foreground='#fa5ccc'>󰬼</span>"
else
  echo "󰬼"
fi
