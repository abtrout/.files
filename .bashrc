set -o vi

if [[ $(uname) == "Darwin" ]]; then
  alias lock='osascript -e "set volume with output muted" ; pmset displaysleepnow'
  alias ls='ls -G'
else
  alias ls='ls --color=always'
fi

export PROMPT_COMMAND='
CLR1=$[18 + RANDOM % 213]
CLR2=$[18 + RANDOM % 213]
PS1="\[$(tput setaf $CLR1; tput bold)\]\h:\[$(tput sgr0; tput setaf $CLR2)\]\w\[$(tput bold)\]\\$\[$(tput sgr0)\] "
'

export PROMPT_DIRTRIM=3

function CREAM() {
  echo
  for i in {16..255}; do
    printf " \x1b[38;5;%sm%3s \x1b[48;5;%sm      \x1b[00m " $i $i $i
    if [ $((i%6)) -eq 3 ]; then echo; fi
    if [ $((i%36)) -eq 15 ]; then echo; fi
  done
  echo
}
