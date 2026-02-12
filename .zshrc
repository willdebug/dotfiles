fastfetch
export PATH
export FZF_DEFAULT_COMMAND="fd"

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
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
