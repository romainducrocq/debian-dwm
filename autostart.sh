#!/usr/bin/env bash

xset s off -dpms &
nitrogen --restore &
imwheel &
numlockx &
lxsession &
#xfce4-power-manager --power manager &
xrandr -s 1360x768
xrdb .Xresources &

while true; do
	xsetroot -name "$(date)"

	sleep 1
done 












