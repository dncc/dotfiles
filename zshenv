ZSH=$HOME/.oh-my-zsh
ZSH_THEME="default"
#ruby path
export PATH="$PATH:/home/dnc/.rbenv/shims:/home/dnc/.rbenv/bin"
#R path
export R_HOME="/usr/lib/R"
#antlr path
export CLASSPATH="$CLASSPATH:/usr/local/antlr-3.4/lib/antlr-3.4-complete.jar"

export PATH="$HOME/.rbenv/bin:$PATH"

# export ALTERNATE_EDITOR=""
# ec is executable file in /usr/local/bin
# with the following script:
# exec /usr/bin/env emacsclient -c -a "" $*
# or the same thing little bit different:
# exec emacsclient --alternate-editor="" -c "$@"
export EDITOR=/usr/local/bin/ec

# save lot of shell history
export HISTSIZE=100000 SAVEHIST=100000 HISTFILE=~/.zhistory

