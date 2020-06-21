# Path to your oh-my-zsh installation.
export ZSH=/home/dnc/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# avoid duplicates in history
export HISTCONTROL=ignoreboth:erasedups

export PATH="/home/dnc/.rbenv/shims:/home/dnc/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/ec2/ec2-api-tools-1.7.1.2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# map CapsLock to CTRL
(source /usr/local/share/keymappings/caps_to_ctrl.sh) 2>/dev/null
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# path for zsh custom functions (e.g. fabric tab autocompletion)
fpath=(~/.zsh/functions $fpath)

# # ocaml
# source /home/dnc/ocamlbrew/ocaml-4.01.0/etc/ocamlbrew.bashrc
# # OPAM configuration
# . /home/dnc/ocamlbrew/ocaml-4.01.0/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# export golang path
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH=/home/dnc/gocode
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/usr/local/go

#Amazon EC2 CLI tools
#/usr/local/ec2
export JAVA_HOME="/usr"
export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.7.1.2"
export PATH=$PATH:$EC2_HOME/bin

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# rust source
export RUST_SRC_PATH=$HOME/workspace/rust/rust/src
# rust binaries
export PATH="$HOME/.cargo/bin:$PATH"

# e.g. for aws cli
export PATH="$HOME/.local/bin:$PATH"

# tell gpg-agent which TTY to prompt on
# export GPG_TTY=$(tty)

# gpg-agent messes up cliqz-tmux login (doesn't prompt
# password and fails to decrypt files when session expires)
# so kill it here since I don't need it currently
killall gpg-agent

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setxkbmap -layout us -option ctrl:nocaps

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
