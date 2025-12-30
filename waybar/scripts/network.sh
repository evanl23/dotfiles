#!/usr/bin/env bash

state=$(nmcli -t -f WIFI g)

if [[ "$state" == "enabled" ]]; then
  ssid=$(nmcli -t -f ACTIVE,SSID dev wifi | awk -F: '$1=="yes"{print $2}')
  if [[ -n "$ssid" ]]; then
    signal=$(nmcli -t -f IN-USE,SIGNAL dev wifi | awk -F: '$1=="*"{print $2}')
    ip=$(ip -4 addr show wlp192s0 | awk '/inet /{print $2}' | cut -d/ -f1)

    echo "{\"text\":\"[   󰤨    ]\",\"tooltip\":\"wifi: $ssid\nSignal: $signal%\nIP: $ip\",\"class\":\"wifi-on\"}"
  else
    echo "{\"text\":\"[   󰤯    ]\"}"
  fi
else
  echo "{\"text\":\"[   󰖪    ]\"}"
fi

