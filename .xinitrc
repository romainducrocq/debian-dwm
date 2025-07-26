[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
dbus-launch & pulseaudio --start & 
feh --bg-scale /opt/debian-dwm/background/background.* &
wal -i /opt/debian-dvm/background/background.* -n &
picom -b --config /opt/debian-dwm/picom.conf &
exec /opt/debian-dwm/dwm-flexipack/dwm
