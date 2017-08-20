set -o vi

# colorized output with ls
if [[ $(uname) == "Darwin" ]]
then alias ls='ls -G'
else alias ls='ls --color=always'
fi

# Locks screen and mutes speakers.
alias lock='osascript -e "set volume with output muted" ; pmset displaysleepnow'

# use at most 3 directores in bash prompt
export PROMPT_DIRTRIM=3
# add timestamps to ~/.bash_history
export HISTTIMEFORMAT="%F %T "
# "unlimited" ~/.bash_history
export HISTSIZE= HISTFILESIZE=
