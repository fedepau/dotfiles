# ~/.zprofile

[[ -f ~/.config/zsh/.zshrc ]] && . ~/.config/zsh/.zshrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
