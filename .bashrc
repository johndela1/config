#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias a='alsamixer'
alias e='emacs -nw'
alias j=jobs
alias l='ls -gtr'
alias ls='ls --color=auto'
alias n='emacs -nw  $HOME/notes/notes.org'
alias sc='screen'
alias s='screen -r'
alias vi=vim
alias wn='play -n synth whitenoise'
alias x=$HOME/xcape/run.sh

alias rl='find . -type f | shuf >random_list'
alias pp='mpg123 -C --list random_list'

ff()
{
    find . -name \*$1\*
}

gg()
{
    lynx google.com/search?q="$1"
}

. /usr/share/cdargs/cdargs-bash.sh
. /usr/share/git/completion/git-completion.bash

export EDITOR='vim'
export HISTFILESIZE=10000
export HISTSIZE=10000
export PATH=$HOME/local/bin:$PATH

export PATH=$PATH:$(go env GOPATH)/bin

