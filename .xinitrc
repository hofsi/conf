#!/bin/bash

setxkbmap de

xset -dpms
xset s off

xsetwacom set "Wacom Intuos S Pen stylus" MapToOutput "2560x1740+1920+0"
xsetwacom set "Wacom Intuos S Pad pad" Button 1 "key +ctrl z -ctrl"
xsetwacom set "Wacom Intuos S Pad pad" Button 3 "key -"
xsetwacom set "Wacom Intuos S Pad pad" Button 2 "key +"
xsetwacom set "Wacom Intuos S Pad pad" Button 8 "key m"


exec i3


# Terminate already running bar instances

#killall polybar

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#   MONITOR=$m polybar --reload main &
#done

