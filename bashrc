#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[[ -s "/home/dnc/.gvm/scripts/gvm" ]] && source "/home/dnc/.gvm/scripts/gvm"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
