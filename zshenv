ZSH=$HOME/.oh-my-zsh
ZSH_THEME="m0nk"

#R path
export R_HOME="/usr/lib/R"
#antlr path
export CLASSPATH="$CLASSPATH:/usr/local/antlr-3.4/lib/antlr-3.4-complete.jar"

# export ALTERNATE_EDITOR=""
# ec is executable file in /usr/local/bin
# with the following script:
# exec /usr/bin/env emacsclient -c -a "" $*
# or the same thing little bit different:
# exec emacsclient --alternate-editor="" -c "$@"
export EDITOR=/usr/bin/gvim

# save lot of shell history
export HISTSIZE=100000 SAVEHIST=100000 HISTFILE=$HOME/.zhistory

# interactive startup file for python shell
export PYTHONSTARTUP=$HOME/.pythonrc

