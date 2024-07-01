if [ "$(swaymsg -t get_outputs | jq '. | length')" -eq 1 ]; then
    systemctl suspend
else
    wlr-randr --output eDP-1 --off
    killall waybar
    waybar -c ~/.config/waybar/docked
fi
