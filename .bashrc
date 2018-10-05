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
alias ubuntu="docker run -i -t ubuntu-16.04 /bin/bash"
# alias pintosDocker="docker run -it ubuntu-16.04:pintos /bin/bash"
alias pintosDocker="docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix ubuntu-16.04:pintos"

PS1='[\u@\h \W]\$ '
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
set -o vi

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
POWERLEVEL9K_TIME_FORMAT="%F{black}\uf017 %D{%I:%M:%S}%f"
POWERLEVEL9K_MODE='nerdfont-complete'
. /usr/share/powerline/bindings/bash/powerline.sh


EDITOR=/usr/bin/vim
