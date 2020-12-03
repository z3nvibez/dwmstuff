#!/bin/sh

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --backend glx --vsync &

#bg
nitrogen --restore &
#wal -R
clipmenud &
dropbox &
dunst &

[ ! -s ~/.config/mpd/pid ] && mpd &


#dwmblocks
#killall dwmblocks
#dwmblocks &


#sxhkd
sxhkd -c ~/.dwm/sxhkd/sxhkdrc &

exec slstatus
