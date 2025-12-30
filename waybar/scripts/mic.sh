#!/usr/bin/env bash

muted=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')

if [[ "$muted" == "yes" ]]; then
  echo "[   󰍭   ]"
else
  echo "[      ]"
fi

