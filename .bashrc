#
# ~/.bashrc
#
#(cat ~/.cache/wal/sequences)
#source ~/.cache/wal/colors-tty.sh
export EDITOR=vim
export LESS="-eirMX"
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias ll='ls --color=auto -alF'
alias grep='grep --color=always'
alias youtube='yt-dlp'
alias REBOOT='reboot'
alias EXIT='exit'
alias np='ncmpcpp'
alias vi='vim'
PS1=' \W \$ '
