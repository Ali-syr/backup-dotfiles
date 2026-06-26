#!/usr/bin/env bash

if pidof rofi > /dev/null; then
    pkill rofi
    exit 0
fi

rofi -show emoji
