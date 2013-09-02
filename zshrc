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

# load settings for urxvt (previously in xinitrc)
# xrdb -merge ~/.Xresources

# add aliases for shutdown/reboot/suspend(to RAM)/hibernate
# alias reboot="sudo reboot"
# alias shutdown="sudo poweroff"
# alias hibernate="sudo hibernate"
# alias suspend="sudo suspend"

# set serbian and us english keyboard layout
# now set up in /etc/default/keyboard instead
# setxkbmap -layout "us, rs" -option "grp:alt_shift_toggle"

# map CapsLock to CTRL
(source /usr/local/share/keymappings/caps_to_ctrl.sh) 2>/dev/null

# alias for pacman
alias apt-get="sudo apt-get"
# add alias for node
# alias node="env NODE_NO_READLINE=1 rlwrap node"
source /usr/local/share/chruby/chruby.sh

# look for local ruby version for each
# project in "${project}/.ruby-version" file
source /usr/local/share/chruby/auto.sh

# default rubies directory is ~/.rubies,
# but we can set rubies directory with
# RUBIES=(~/.rbenv/versions/*)
# set default ruby
chruby 2.0.0 1>/dev/null

# start services with systemd here, I'm
# sure there is a better place for this
# sudo systemctl start network
# sudo systemctl start mysqld
xsetroot -solid "#545454" 2>/dev/null
