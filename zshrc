#
# ~/.zshrc
#

autoload omz
zstyle :omz:style theme default
plugins=(archlinux git)
omz init

#autoload -U compinit promptinit
#compinit
#promptinit

#ruby path
export PATH="$PATH:/home/dnc/.rbenv/shims:/home/dnc/.rbenv/bin"
#R path
export R_HOME="/usr/lib/R"
#antlr path
export CLASSPATH="$CLASSPATH:/usr/local/antlr-3.4/lib/antlr-3.4-complete.jar"

# add aliases for shutdown/reboot/suspend(to RAM)/hibernate
alias reboot="sudo reboot"
alias shutdown="sudo shutdown"
alias hibernate="sudo pm-hibernate"
alias suspend="sudo pm-suspend"

# alias for pacman
alias pacman="sudo pacman"
# add alias for node
alias node="env NODE_NO_READLINE=1 rlwrap node"

# export ALTERNATE_EDITOR=""
# ec is executable file in /usr/local/bin
# with the following script:
# exec /usr/bin/env emacsclient -c -a "" $*
# or the same thing little bit different:
# exec emacsclient --alternate-editor="" -c "$@"
export EDITOR=/usr/local/bin/ec

# save lot of shell history
export HISTSIZE=100000 SAVEHIST=100000 HISTFILE=~/.zhistory
