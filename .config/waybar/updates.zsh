#!/bin/zsh

repo=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)

total=$(($repo + $aur))
updates=$(checkupdates 2>/dev/null | sed ':a;N;$!ba;s/\n/\\n/g')
printf '{"text":"%s","tooltip":"%s"}\n' "$total" "$updates"
