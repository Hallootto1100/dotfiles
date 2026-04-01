#!/usr/bin/env bash

STATE_FILE="/tmp/hypr_pseudo_state"

# Get active monitor width (requires jq)
MON_WIDTH=$(hyprctl monitors -j | jq '.[] | select(.focused==true) | .width')
MON_HEIGHT=$(hyprctl monitors -j | jq '.[] | select(.focused==true) | .height')
WIN_ADDR=$(hyprctl activewindow -j | jq '.stableId' | bc)

TARGET_WIDTH=$(printf "%.0f" "$(echo "$MON_WIDTH * 0.3" | bc)")
STATE_FILE="${STATE_FILE}_${WIN_ADDR}"
echo ${TARGET_WIDTH}
echo ${MON_WIDTH}

if [ -f "$STATE_FILE" ]; then
    # Restore normal tiling
    hyprctl dispatch pseudo
    rm "$STATE_FILE"
else
    # Enable pseudo + shrink to 30% of screen width
    hyprctl dispatch pseudo
    hyprctl dispatch resizeactive exact "$TARGET_WIDTH" "$MON_HEIGHT"
    touch "$STATE_FILE"
fi
