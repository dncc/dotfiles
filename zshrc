#
# ~/.zshrc
#

source $ZSH/oh-my-zsh.sh

plugins=(archlinux gem bundler git)

autoload -U compinit
compinit
zstyle ':completion:*' menu select

autoload -U promptinit
promptinit


# add aliases for shutdown/reboot/suspend(to RAM)/hibernate
alias reboot="sudo reboot"
alias shutdown="sudo shutdown -h now"
alias hibernate="sudo systemctl hibernate"
alias suspend="sudo systemctl suspend"

# alias for pacman
alias pacman="sudo pacman"
# add alias for node
alias node="env NODE_NO_READLINE=1 rlwrap node"

export PATH="/home/dnc/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
