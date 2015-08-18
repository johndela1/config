#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS1='\W $ '
alias ls='ls --color=auto'
alias a='alsamixer'
alias e='emacs -nw'
alias p='mpg123 --list ./pl -z  -C'
alias mpg123='mpg123 -C'
alias wn='play -n synth whitenoise'
alias l='ls -ltr'
alias n='cd ~/orgmode; git pull; e notes.org; git status | grep modified.*notes\.org > /dev/null  &&  (git add notes.org; git commit -m "token message "; git push); cd -; 2>/dev/null'
#alias n='cd ~/orgmode; e notes.org; cd -'
# setxkbmap -layout us -option ctrl:nocaps 2>/dev/null
# xmodmap ~/.xmodmap

gg()
{
	lynx google.com/search?q="$1"
}

export EDITOR='emacs -nw'

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# if [ -z "$SSH_AUTH_SOCK" ] ; then
#   eval `ssh-agent -s`
#   ssh-add
# fi
setxkbmap -option ctrl:nocaps
export PATH=/home/john/local/bin:$PATH
