#!/bin/bash

dbus-launch &
pulseaudio --start &
pasystray > /dev/null 2>&1 &
nm-applet > /dev/null 2>&1 &
blueman-applet > /dev/null 2>&1 &
feh --bg-scale /opt/debian-dwm/background/background.* &
picom -b &
/opt/debian-dwm/dwmblocks/dwmblocks &
