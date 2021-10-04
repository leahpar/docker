PS1='\[\033[01;33m\][\[\033[01;36m\]\u⚡\[\033[01;33m\]\h]\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
#eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA -i'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias lycos='find . -type f | xargs grep $@ --color=auto 2>/dev/null'
alias sf='php bin/console'

