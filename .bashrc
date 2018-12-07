#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias a='alsamixer'
alias rc='vi $HOME/.bashrc; . /home/john/.bashrc'
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
alias i='systemd-inhibit --what=handle-lid-switch sleep 1d'
alias d='sct 2000; br 600'
alias b='sct 5500; br 1000'
alias m='cd $HOME/music; mpg123 -z */*'
alias rp='moplayer -novideo `find . -type f|sort -R`'

alias cmusd='screen -q -r -D cmus || screen -d -m -S cmus $(which cmus)'
alias c=cmus-remote
alias cl='cmus-remote -c -q -l'
alias q='c -Q | head -2'
RATING=$HOME/rating.txt
compact()
{
    awk '{a[$1]=$2} END {for (i in a) {print i}}' $RATING
}
pl()
{
    cat $RATING | awk -v var=$1 '{pl[$1] = $2} END {for (i in pl){if (pl[i]==var) {print i}}}'
}
p()
{
    cmus-remote -l `pl $1`
}

r()
{
  if [ $# != 1 ]; then
    echo "usage: $0 <rating>"
    return 
  fi
  echo `cmus-remote -Q | awk 'NR==2 {print $2}'` "$1" | sed "s|^`dirname $RATING`/||" >>$RATING
}

x()
{
    chmod +x
}

f()
{
    find . -name \*$1\*
}

g()
{
    lynx google.com/search?q="$1"
}

. /usr/share/cdargs/cdargs-bash.sh
. /usr/share/git/completion/git-completion.bash

export EDITOR='vim'
export HISTFILESIZE=10000
export HISTSIZE=10000
export PATH=$HOME/local/bin:$PATH
export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go_workspace
export PATH=$PATH:$(go env GOPATH)/bin

