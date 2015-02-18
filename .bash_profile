#alias ls='ls --color=always'
alias ls='ls -G'
alias screen='screen -T screen-256color'
alias sbt='SBT_OPTS=-XX:MaxPermSize=256m sbt'
alias lock='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

#PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setab 160)\]'; else echo '\[$(tput setab 20)\]'; fi) \[$(tput setaf 252)\]\u:\[$(tput setaf 255)\]\w \[$(tput sgr0)\] "
#PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setaf 200)\]'; else echo '\[$(tput setaf 45)\]'; fi)\[$(tput bold)\]\u\[$(tput sgr0)\]$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setaf 126)\]'; else echo '\[$(tput setaf 33)\]'; fi):\w$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setaf 200)\]'; else echo '\[$(tput setaf 45)\]'; fi)\[$(tput bold)\] \\$\[$(tput sgr0)\] "
#PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setaf 124)\]'; else echo '\[$(tput setaf 148)\]'; fi)\[$(tput bold)\]\h\[$(tput sgr0)\]$(if [[ ${EUID} == 0 ]]; then echo '\[$(tput setaf 52)\]'; else echo '\[$(tput setaf 136)\]'; fi):\w \[$(tput sgr0)\]"

# add timestamps to ~/.bash_history
export HISTTIMEFORMAT="%F %T "
# "unlimited" ~/.bash_history
export HISTSIZE= HISTFILESIZE=

set -o vi
