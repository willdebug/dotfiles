#!/bin/zsh

sudo /usr/bin/pacman -Syu --noconfirm
/usr/bin/yay -Syu --noconfirm
killall waybar -SIGUSR2 
notify-send -a "System Updates" "The system has been successfully updated"
