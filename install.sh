#!/usr/bin/bash

yay -S vicinae overskride nmgui cursor-clip-git zenity-gtk3 

sudo pacman -S waybar hyprland hyprpaper hyprlock matugen neovim ghostty qt5ct qt6ct firefox zsh starship rofimoji adw-gtk-theme zoxide fd exa

cargo install wallpaper-util

gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
