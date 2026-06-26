#!/usr/bin/env bash

wallpapers_dir="$HOME/Pictures/Wallpapers"

current_wallpaper=$(awww query | head -n 1 | awk -F'image: ' '/image:/ {print $2; exit}')

random_wallpaper=$(find "$wallpapers_dir" -maxdepth 1 -type f ! -path "$current_wallpaper" | shuf -n 1)

if [ -z "$random_wallpaper" ]; then
    random_wallpaper=$(find "$wallpapers_dir" -maxdepth 1 -type f | shuf -n 1)
fi

awww img "$random_wallpaper" --transition-type any --transition-duration 2 --transition-fps 60

~/.config/ali/wallpaper_effects.sh "$random_wallpaper"
