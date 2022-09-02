#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\033[1;00m\][\[\033[1;36m\]\u\[\033[1;00m\]@\[\033[1;34m\]\h \[\033[1;33m\]\W\[\033[1;00m\]] \[\033[1;00m\]$ "

# Directories added to $PATH. May fix one day.
export PATH=/home/fedepau/.local/bin:$PATH
export PATH=/home/fedepau/.local/bin/statusbar:$PATH
export PATH=/home/fedepau/.programs/qe-7.0/bin:$PATH
export PATH=/home/fedepau/.programs/:$PATH

# System aliases
alias sdn="sudo poweroff"
alias rn="sudo reboot"

# Software aliases
alias gp="gnuplot"
alias wttr="curl wttr.in/@147.122.1.160"
alias xcrin="xcrysden --pwi"
alias xcrout="xcrysden --pwo"
alias pacman="sudo pacman"
alias vim="nvim"
