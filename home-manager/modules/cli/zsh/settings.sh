# nilo/.config/zsh/settings.sh

# case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

