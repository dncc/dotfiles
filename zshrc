#
# ~/.zshrc
#
source $ZSH/oh-my-zsh.sh
unsetopt correct
unsetopt correct_all

plugins=(git)

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
# chruby 2.0.0 1>/dev/null

# start services with systemd here, I'm
# sure there is a better place for this
# sudo systemctl start network
# sudo systemctl start mysqld
xsetroot -solid "#545454" 2>/dev/null

source ~/.aliases

# add gpg-agent so with ssh support
# before this we need to run:
#	$ echo "enable-ssh-support" >> ~/.gnupg/gpg-agent.conf
#
# gpg-agent --daemon --enable-ssh-support \
#       --write-env-file "${HOME}/.gpg-agent-info"
# if [ -f "${HOME}/.gpg-agent-info" ]; then
#    . "${HOME}/.gpg-agent-info"
#   export GPG_AGENT_INFO
#   export SSH_AUTH_SOCK
#   export SSH_AGENT_PID
# fi
#
# GPG_TTY=$(tty)
# export GPG_TTY

# path for zsh custom functions (e.g. fabric tab autocompletion)
fpath=(~/.zsh/functions $fpath)
# ocaml
source /home/dnc/ocamlbrew/ocaml-4.01.0/etc/ocamlbrew.bashrc
# OPAM configuration
. /home/dnc/ocamlbrew/ocaml-4.01.0/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
# export golang path
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/usr/local/go
export GOPATH=/home/dnc/gocode

#Amazon EC2 CLI tools
#/usr/local/ec2
export JAVA_HOME="/usr"
export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.7.1.2"
export PATH=$PATH:$EC2_HOME/bin


