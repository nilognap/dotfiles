# nilo/.config/zsh/aliases.sh

# good
alias ls="ls -F --color=auto"

function chpwd() {
	ls
}

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
alias grep="grep -rnw . -e"

