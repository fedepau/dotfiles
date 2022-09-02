# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh

autoload -U colors && colors
PS1="[%B%{$fg[yellow]%}%n%{$reset_color%}@%B%{$fg[blue]%}%m %B%{$fg[green]%}%~%{$reset_color%}] "


# system aliases
alias sdn="sudo shutdown -h now"
alias rn="sudo reboot -h now"

# software aliases
alias bm="bashmount"
alias gp="gnuplot"
alias ll="ls -al --color=auto"
alias ls="ls --color=auto"
alias lo="libreoffice"
alias pacman="sudo pacman"
alias vim="nvim"
alias wttr="curl wttr.in/@147.122.1.160"
alias xcrin="xcrysden --pwi"
alias xcrout="xcrysden --pwo"
alias z="zathura"

setopt autocd beep extendedglob nomatch notify
setopt HIST_SAVE_NO_DUPS
bindkey -v
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward
autoload -U compinit; compinit
