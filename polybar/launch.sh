#!/usr/bin/env bash

killall -q polybar

if [[ $HOSTNAME == "arch-simon" ]]; then
    polybar primary &
    polybar secondary &
    polybar tertiary &
else
    polybar standard &
fi
