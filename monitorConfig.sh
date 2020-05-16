#!/bin/bash

# monitor configurations
monitorConfigs="Monitor1&2\nMonitor1\nLaptop Monitor"
chosen=$(echo -e "$monitorConfigs" | dmenu -i -p "Select Monitor configuration: ")

case "$chosen" in 
    "Monitor1&2") xrandr --output eDP-1 --off --output DP-1-1 --primary --auto --left-of DP-1-3 --output DP-1-3 --auto;;
    "Monitor1") xrandr --output eDP-1 --off --output DP-1-1 --auto --output DP-1-3 --off;;
    "Laptop Monitor") xrandr --output eDP-1 --auto --output DP-1-1 --off --output DP-1-3 --off;;
esac