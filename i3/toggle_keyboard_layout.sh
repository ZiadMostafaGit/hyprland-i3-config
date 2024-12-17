#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [[ "$current_layout" == "us" ]]; then  # Assuming you're toggling with "us"
    setxkbmap ara
elif [[ "$current_layout" == "ara" ]]; then # Add this check
    setxkbmap us
else
    setxkbmap us # Set a default if needed
fi
