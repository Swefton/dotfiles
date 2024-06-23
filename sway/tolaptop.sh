if [ "$(swaymsg -t get_outputs | jq '. | length')" -eq 1 ]; then
    echo "One Monitor"
else
    wlr-randr --output eDP-1 --on --pos 600,1080 --output DP-1 --on
    killall waybar
    waybar -c ~/.config/waybar/docked
fi
