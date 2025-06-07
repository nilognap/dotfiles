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

alias ls="ls -FG"

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

# my tools
tool_path="$HOME/code/dotfiles/tools"
if [ -d "$tool_path" ]; then
	export PATH="$tool_path:$PATH"
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

