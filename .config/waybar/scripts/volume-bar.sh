#!/bin/bash
# Volume bar display: VOL |||||:::::
vol_info=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)
vol=$(echo "$vol_info" | awk '{print int($2 * 100)}')
muted=$(echo "$vol_info" | grep -c MUTED)

filled=$((vol / 10))
[ "$filled" -gt 10 ] && filled=10
empty=$((10 - filled))

bar=""
for ((i=0; i<filled; i++)); do bar+="|"; done
for ((i=0; i<empty; i++)); do bar+=":"; done

if [ "$muted" -eq 1 ]; then
    echo "MUT $bar"
else
    echo "VOL $bar"
fi
