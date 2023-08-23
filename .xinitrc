#!/bin/bash
if [[ $HOSTNAME == "arch-simon" ]]; then
	#setxkbmap de -option 'caps:escape'
    xsetwacom set "Wacom Intuos S Pen stylus" MapToOutput "2560x1740+1680+0"
    if false; then
	xsetwacom set "Wacom Intuos S Pen stylus" Mode "Relative"
	xsetwacom set "Wacom Intuos S Pen stylus" CursorProximity "10"
    fi
else
    setxkbmap us -option 'caps:escape'
    xsetwacom set "Wacom Intuos S Pen stylus" MapToOutput "1920x1080"
fi
xset -dpms
xset s off

xsetwacom set "Wacom Intuos S Pad pad" Button 1 "key +ctrl z -ctrl"
xsetwacom set "Wacom Intuos S Pad pad" Button 3 "key -"
xsetwacom set "Wacom Intuos S Pad pad" Button 2 "key +"
xsetwacom set "Wacom Intuos S Pad pad" Button 8 "key m"

exec i3

# Terminate already running bar instances

killall polybar
~/.config/polybar/launch.sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
