# This logic checks if the active window is floating, 
# if so, switches to tiled; otherwise, switches to floating.
if [[ $(hyprctl activewindow -j | jq .floating) == "true" ]]; then
    hyprctl dispatch cyclenext tiled
else
    hyprctl dispatch cyclenext floating
fi
