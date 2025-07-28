#!/bin/bash

dbus-launch & pulseaudio --start &
nm-applet &
feh --bg-scale /opt/debian-dwm/background/background.* &
picom -b &
/opt/debian-dwm/dwmblocks/dwmblocks &
