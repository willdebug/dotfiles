#!/bin/zsh

/usr/bin/yay --noconfirm
killall waybar -SIGUSR2 
notify-send -a "System Updates" "The system has been successfully updated"
