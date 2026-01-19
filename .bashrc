# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
#Aliases
alias clang++='clang++ -std=c++23 -Wall'
alias cd='z'
alias grep='rg'
alias cat='bat'
alias ls='exa --icons --colour=always --all'
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc
. "$HOME/.cargo/env"

export QT_QPA_PLATFORMTHEME=qt6ct 
export QT_QPA_PLATFORM=wayland 
eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash)"

