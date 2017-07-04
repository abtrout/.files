set -o vi

# colorized output with ls
if [[ $(uname) == "Darwin" ]]
then alias ls='ls -G'
else alias ls='ls --color=always'
fi

# Locks screen and mutes speakers.
alias lock='osascript -e "set volume with output muted" ; pmset displaysleepnow'

# add timestamps to ~/.bash_history
export HISTTIMEFORMAT="%F %T "
# "unlimited" ~/.bash_history
export HISTSIZE= HISTFILESIZE=
