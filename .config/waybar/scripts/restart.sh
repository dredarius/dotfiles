#!/bin/bash
# Restart waybar without killing the terminal session

# Kill any existing waybar instances
killall -q waybar

# Wait for process to die
while pgrep -x waybar >/dev/null; do
    sleep 0.1
done

# Start waybar detached from terminal (no SIGHUP on exit)
nohup waybar >/dev/null 2>&1 &
disown

echo "Waybar restarted"
