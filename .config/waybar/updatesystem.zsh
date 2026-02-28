#!/bin/zsh

sudo pacman -Syu 
yay -Syu
killall waybar -SIGUSR2 
notify-send -a "System Updates" "The system has been successfully updated"
