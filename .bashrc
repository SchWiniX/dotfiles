#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LC_ALL=en_US.UTF-8

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias protonpull='rclone sync -v ProtonDrive:/root ~/ProtonDrive'
alias protonpush='rclone sync -v ~/ProtonDrive ProtonDrive:/root'
alias config='/usr/bin/git --git-dir=$HOME/git-rep/dotfiles/ --work-tree=$HOME'
alias mktex='mktex.sh'
alias ll='ls -ahl'
PS1='[\u@\h \W]\$ '

export "SUDO_EDITOR"="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
