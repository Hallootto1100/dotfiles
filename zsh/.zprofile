if [[ -z "$WAYLAND_DISPLAY" && "$(tty)" == "/dev/tty1" ]] && ! pgrep -x Hyprland >/dev/null; then
  exec start-hyprland
fi
