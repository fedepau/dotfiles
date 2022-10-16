#!/bin/sh

# my silly way of managing dotfiles when porting my rice to a new installation:
# simply run the script to automatically symlink everything in the dotfiles
# repo to the right location.

echo "Enter username: "
read USER

[[ -f "/home/$USER/.config" ]] || mkdir /home/$USER/.config 2>&1 >/dev/null

for app in dunst git nvim surf X11 zathura zsh
do
    [[ -f /home/$USER/.config/app" ]] || mkdir /home/$USER/.config/$app
done

# dunst
ln -s /home/$USER/.programs/dotfiles/dunst/dunstrc /home/$USER/.config/dunst/dunstrc

# git
ln -s /home/$USER/.programs/dotfiles/git/config /home/$USER/.config/git/config

# nvim
ln -s /home/$USER/.programs/dotfiles/nvim/init.vim /home/$USER/.config/nvim/init.vim

# surf
ln -s /home/$USER/.programs/dotfiles/surf/bookmarks /home/$USER/.config/surf/bookmarks

# X11
ln -s /home/$USER/.programs/dotfiles/X11/xinitrc /home/$USER/.config/X11/xinitrc

# zathura
ln -s /home/$USER/.programs/dotfiles/zathura/zathurarc /home/$USER/.config/zathura/zathurarc

# zsh
mkdir /home/$USER/.config/zsh/plugins
ln -s /home/$USER/.programs/dotfiles/zsh/zshrc /home/$USER/.config/zsh/.zshrc
ln -s /home/$USER/.programs/dotfiles/zsh/zprofile /home/$USER/.config/zsh/.zprofile
ln -s /home/$USER/.programs/dotfiles/zsh/aliases /home/$USER/.config/zsh/aliases
ln -s /home/$USER/.programs/dotfiles/zsh/zshenv /home/$USER/.zshenv
ln -s /home/$USER/.programs/dotfiles/zsh/plugins/cursormode /home/$USER/.config/zsh/plugins/cursormode
ln -s /home/$USER/.programs/dotfiles/zsh/plugins/lfcd /home/$USER/.config/zsh/plugins/lfcd
