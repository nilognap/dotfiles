# nilognap's zshrc

# APPEARANCE

setopt PROMPT_SUBST
PROMPT=$'\n'"   %F{blue}%~%f"$'\n'" %F{magenta}➜%f %F{blue}%#%f "

# BASIC

alias ls="ls -FG"

cdls() {
	builtin cd "$@" && ls
}
alias cd="cdls"

alias du="du -sh"

# confirmation
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# case insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

# ALIASES
alias v="vim"
alias h="hx"

# ENVIRONMENT

# my tools
if [ -d "$HOME/code/tools" ]; then
	export PATH="$HOME/code/tools:$PATH"
fi

# languages
alias python=/usr/local/bin/python3.13
# export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# pesky history files
export LESSHISTFILE="$HOME/.config/less/history"
export PYTHONHISTFILE="$HOME/.config/python/.python_history"

# SUSPICIOUS
bindkey -v # vim mode

