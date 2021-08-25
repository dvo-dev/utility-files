#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ls='ls --color=auto -GFh'
alias vim="vim -S ~/.vimrc"
alias vi="vim"
alias make="make -j"

git() {
        if [[ $@ == "tree" ]]; then
                command git log --all --graph --decorate --oneline --simplify-by-decoration
        elif [[ $@ == "prune-branches" ]]; then
                command git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
        else
                command git "$@"
        fi
}

LS_COLORS='ow=01;36;40'
PS1='[\u@\h \W]\$ '

set -o vi
export LS_COLORS
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
export PATH=$(go env GOPATH)/bin:$PATH

EDITOR=/usr/bin/vim
