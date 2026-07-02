#!/usr/bin/env bash

pacman_packages=(
    # Hyprland & Wayland Environment
    hyprland hyprlock awww grim slurp swaync waybar rofi rofi-emoji wtype yad hyprshot xdg-desktop-portal-hyprland xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk

    # System
    brightnessctl network-manager-applet bluez bluez-utils blueman pipewire wireplumber pavucontrol
    
    # System Utilities and Media
    ghostty nemo gvfs loupe celluloid gnome-text-editor evince obs-studio cava
    
    # Qt & Display Manager Support
    sddm qt5ct qt6ct qt5-wayland qt6-wayland

    # Input Method
    fcitx5 fcitx5-gtk fcitx5-qt fcitx5-configtool fcitx5-bamboo
    
    # Misc
    ttf-jetbrains-mono-nerd noto-fonts nwg-look kvantum-qt5 libvips libheif openslide poppler-glib cliphist gnome-characters keepass
)

sudo pacman -S --noconfirm "${pacman_packages[@]}"
