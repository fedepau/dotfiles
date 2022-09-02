#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\033[1;00m\][\[\033[1;36m\]\u\[\033[1;00m\]@\[\033[1;34m\]\h \[\033[1;33m\]\W\[\033[1;00m\]] \[\033[1;00m\]$ "

#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh

# environment variables
export PATH=/home/fedepau/.local/bin:$PATH
export PATH=/home/fedepau/.local/bin/statusbar:$PATH
export JUPYTER_CONFIG_DIR=/home/fedepau/.config/jupyter

# system aliases
alias sdn="sudo shutdown -h now"
alias rn="sudo reboot -h now"

# software aliases
alias bm="bashmount"
alias gp="gnuplot"
alias pacman="sudo pacman"
alias vim="nvim"
alias wttr="curl wttr.in/@147.122.1.160"
alias xcrin="xcrysden --pwi"
alias xcrout="xcrysden --pwo"
alias z="zathura"

# eternal bash history
# NB. to trim hisory file, run:
# $ sort .bash_history | uniq > tmp.txt && mv tmp.txt .bash_history
export HISTFILESIZE=
export HISTSIZE=
