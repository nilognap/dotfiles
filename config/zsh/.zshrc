# nilognap's zshrc

# UI

setopt PROMPT_SUBST
# too good
PROMPT="
   %F{blue}%~%f
 %F{magenta}➜%f %F{blue}%#%f "

# BASIC

# case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

alias ls="ls -F --color=auto"

cdls() {
	builtin cd "$@" && ls
}
alias cd="cdls"

# confirmation
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# misc
alias du="du -sh"


# ALIASES

# basic
alias l=ls
alias c=cd

# good
alias v=vim
alias h=hx

# ENVIRONMENT

bin_path="$HOME/dotfiles/bin"
if [ -d "$bin_path" ]; then
	export PATH="$bin_path:$PATH"
fi

# languages
# alias python=/usr/local/bin/python3.13
# export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
# export PATH="/usr/local/opt/openjdk/bin:$PATH"

# pesky history files
export LESSHISTFILE="$HOME/.config/less/history"
export PYTHONHISTFILE="$HOME/.config/python/.python_history"

# SUSPICIOUS
bindkey -v # vim mode
bindkey -M viins 'jk' vi-cmd-mode

# PLUGINS (do plugins with home manager)
# eval "$(pay-respects zsh --alias)"
