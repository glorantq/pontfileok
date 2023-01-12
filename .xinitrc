[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

autorandr --change

dunst &
picom -c --config ~/.config/picom/picom.conf &
nitrogen --restore &

python ~/.local/scripts/dbus_subscriber.py &
dwmblocks &

xbindkeys

dbus-update-activation-environment --all
gnome-keyring-daemon --start --components=secrets

exec dwm
