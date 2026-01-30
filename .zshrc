fastfetch
export PATH
export PATH="/home/william/Applications/:$PATH"
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
 PATH="$HOME/.local/bin:$HOME/bin:$PATH"
	fi
	unset rc
 . "$HOME/.cargo/env"
  

alias clang++='clang++ -std=c++23 -Wall'

alias cd='z'
alias grep='rg'
alias cat='bat'
alias ls='exa --icons --colour=always --all'
eval "$(zoxide init bash)"
eval "$(starship init zsh)"
