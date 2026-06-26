#!/usr/bin/env bash

current_wallpaper_path="$1"

if [ -z "$current_wallpaper_path" ]; then
    current_wallpaper_path=$(awww query | head -n 1 | awk -F'image: ' '/image:/ {print $2; exit}')
fi

destination_wallpaper_dir="$HOME/.cache/awww"
mkdir -p "$destination_wallpaper_dir"

rm -f "$destination_wallpaper_dir/normal.png"

if [ -f "$current_wallpaper_path" ]; then
    cp "$current_wallpaper_path" "$destination_wallpaper_dir/normal.png"
fi
