set -o vi

if [[ $(uname) == "Darwin" ]]; then
  alias lock='osascript -e "set volume with output muted" ; pmset displaysleepnow'
  alias ls='ls -G'
else
  alias ls='ls --color=always'
fi

export PROMPT_DIRTRIM=3
