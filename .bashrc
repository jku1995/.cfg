# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return



export EDITOR=nvim
[[ ! -e ~/.dircolors ]] && eval $(dircolors -p > ~/.dircolors)
[[ -e ~/.dircolors ]] && eval $(dircolors -b ~/.dircolors)

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias dgrep='dgrep --color=auto'
alias vi='nvim'
alias vidwm='cd ~/Tools/dwm&&vi config.h'
alias vist='cd ~/Tools/st&&vi config.h'
alias visls='cd ~/Tools/slstatus&&vi config.h'
alias vidm='cd ~/Tools/dmenu&&vi config.h'
# set python virtual env for wmi-ui
source ~/pyenv/bin/activate
# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh
#处理宽字符截断，没卵用注释掉
#localectl set-locale LANG=en_US.utf8
#z.lua
eval "$(lua /usr/share/z.lua/z.lua --init bash)"

PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/yef/.cfg/ --work-tree=/home/yef'
