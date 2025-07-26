[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
dbus-launch & pulseaudio --start & 
feh --bg-scale /opt/background/background.* &
wal -i /opt/background/background.* -n &
picom -b --config /opt/debian-dwm/picom.conf &
exec /opt/debian-dwm/dwm-flexipack/dwm
