#!/bin/bash
options="Lock\nSuspend\nRestart\nShut Down"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power" -theme-str 'window {width: 200px;}')

case "$chosen" in
    "Lock") loginctl lock-session ;;
    "Suspend") systemctl suspend ;;
    "Restart") systemctl reboot ;;
    "Shut Down") systemctl poweroff ;;
esac
