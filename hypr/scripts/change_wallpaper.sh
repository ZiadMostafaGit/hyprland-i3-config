#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="/home/ziad/.config/backgrounds/"

# Select a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# if [[-z "$WALLPAPER" ]]; then 
# 	echo "ERROR NO WALLPAPER FOUND"
# 	exit 1
# fi
# Update the wallpaper using Hyprpaper
echo "preload = $WALLPAPER" > ~/.config/hypr/hyprpaper.conf
echo "wallpaper = , $WALLPAPER" >> ~/.config/hypr/hyprpaper.conf



pkill -USR1 hyprpaper

hyprpaper &
