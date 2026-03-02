# Created by newuser for 5.9

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias cat='bat'
alias fk='fuck'

alias install='sudo pacman -S'
alias update-system='sudo pacman -Syu'
alias remove-orphans='sudo pacman -Rsn $(pacman -Qdtq)'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(thefuck --alias)"
eval "$(starship init zsh)"

export PATH="/home/geromequa/.local/bin:$PATH"
export PATH="/home/geromequa/.config/scripts:$PATH"
export PATH="$HOME/dev/scripts/dev-setup:$PATH"
export DOCKER_HOST="unix:$XDG_RUNTIME_DIR/podman/podman.sock"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export XDG_CONFIG_HOME=/home/geromequa/.config
