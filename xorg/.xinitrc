#!/bin/sh
# Variables Definitions
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
i3lock=$SCRIPTS/i3block_bg

# Merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Startup Sequence
nitrogen --restore &
picom --config ~/.config/picom/picom.conf -b 
nm-applet &
#xautolock -time 5 -locker 
setxkbmap -layout fr &
unclutter &
mpd ~/.config/mpd/mpd.conf &
laptop_mode &
cbatticon &
psensor &
orage &
xss-lock --transfer-sleep-lock -- $i3lock &
#udiskie &
kmix &
#exec dwm
exec i3
