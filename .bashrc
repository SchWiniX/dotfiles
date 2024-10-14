#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias protonpull='rclone sync -v ProtonDrive:/root ~/ProtonDrive'
alias protonpush='rclone sync -v ~/ProtonDrive ProtonDrive:/root'
alias config='/usr/bin/git --git-dir=$HOME/git-rep/dotfiles/ --work-tree=$HOME'
PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
