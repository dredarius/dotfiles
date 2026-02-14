#!/bin/bash
# KDE Plasma virtual desktop indicator (filled/empty dots)
count=$(busctl --user get-property org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager count 2>/dev/null | awk '{print $2}')
current_id=$(busctl --user get-property org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager current 2>/dev/null | awk '{print $2}' | tr -d '"')

[ -z "$count" ] && count=2

# Get ordered desktop IDs
desktops_raw=$(busctl --user get-property org.kde.KWin /VirtualDesktopManager org.kde.KWin.VirtualDesktopManager desktops 2>/dev/null)

output=""
for ((i=1; i<=count; i++)); do
    # Extract the i-th desktop ID from the desktops property
    desktop_id=$(echo "$desktops_raw" | grep -oP '"[0-9a-f-]+"' | sed -n "${i}p" | tr -d '"')
    if [ "$desktop_id" = "$current_id" ]; then
        output+="●  "
    else
        output+="○  "
    fi
done

echo "${output% }"
