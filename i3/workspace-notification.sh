#!/bin/bash

# Get the name of the focused workspace
workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true) | .name' | tr -d '"')

# Get screen width and height
screen_width=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
screen_height=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

# Calculate the notification position
notification_width=310  # Adjust the notification width as needed
notification_height=350 # Adjust the notification height as needed
x_pos=$(( (screen_width - notification_width) / 2 ))
y_pos=$(( (screen_height - notification_height) / 2 ))

# Display a notification using dunstify
dunstify -t 750 "Workspace Changed" "$workspace"

# Wait a short moment to ensure the notification window is created
sleep 0.1

# Use xdotool to move the notification window to the center
window_id=$(xdotool search --classname "Dunst")
xdotool windowmove $window_id $x_pos $y_pos
