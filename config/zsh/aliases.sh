# nilo/.config/zsh/aliases.sh

# cdls
alias ls="ls -F --color=auto"

cdls() {
	builtin cd "$@" && ls
}
alias cd="cdls"

# shortened
alias l=ls
alias c=cd

alias v=vim
alias h=hx

# confirmation
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# misc
alias du="du -sh"

