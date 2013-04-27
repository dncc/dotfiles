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
alias shutdown="sudo systemctl poweroff"
alias hibernate="sudo systemctl hibernate"
alias suspend="sudo systemctl suspend"

# alias for pacman
alias pacman="sudo pacman"
# add alias for node
alias node="env NODE_NO_READLINE=1 rlwrap node"

RUBIES=(~/.rbenv/versions/*)
source /usr/local/share/chruby/chruby.sh
# look for local ruby version for each
# project in "${project}/.ruby-version" file
source /usr/local/share/chruby/auto.sh

# start services with systemd here, I'm
# sure there is a better place for this
sudo systemctl start network
sudo systemctl start mysqld
