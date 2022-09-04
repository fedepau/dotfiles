# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

PS1="[%B%{$fg[yellow]%}%n%{$reset_color%}@%B%{$fg[blue]%}%m %B%{$fg[green]%}%~%{$reset_color%}] "

# navigation
setopt AUTO_CD                  # go to written folder withouth cd
setopt AUTO_PUSHD               # push visited directories onto the stack
setopt PUSHD_IGNORE_DUPS        # do not store duplicates in the directory stack
setopt PUSHD_SILENT             # do not print the directory stack after pushd
setopt CORRECT                  # spelling correction
setopt CDABLE_VARS              # allows cd to paths stored in variables
setopt EXTENDED_GLOB            # use extended globbing syntax

# history
setopt EXTENDED_HISTORY         # write history in verbose format
setopt SHARE_HISTORY            # share history between all sessions
setopt HIST_EXPIRE_DUPS_FIRST   # expire duplicates first form histfile
setopt HIST_IGNORE_DUPS         # do not record an eveng that was just recorded again
setopt HIST_IGNORE_ALL_DUPS     # delete an old event if a duplicate is written to histfile
setopt HIST_FIND_NO_DUPS        # do not display a previously found event
setopt HIST_IGNORE_SPACE        # do not record an event starting with a space
setopt HIST_SAVE_NO_DUPS        # do not write a duplicate event to the history file
setopt HIST_VERIFY              # do not execute immediately upon history expansion

# colors
autoload -U colors && colors    # fetch colors from terminal colorscheme

# aliases
source $ZDOTDIR/aliases

# jump to recently visited directories in the stack 
for index ({1..9}) alias "$index"="cd +${index}"; unset index

setopt promptsubst
setopt autocd beep extendedglob nomatch notify
export KEYTIMEOUT=1
zmodload zsh/complist
autoload -U compinit; compinit

source $ZDOTDIR/plugins/cursormode
#source $ZDOTDIR/plugins/prompt

fpath=($ZDOTDIR/plugins $fpath)
autoload -Uz prompt2;
prompt2

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^F' history-incremental-search-forward
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# edit current command line in vim (by pressing "v" in normal mode)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# this emulates vim-surround
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -M vicmd cs change-surround
bindkey -M vicmd ds delete-surround
bindkey -M vicmd ys add-surround
bindkey -M visual S add-surround

# syntax highlightning (should be sourced last!)
source /home/fedepau/.programs/fast-syntax-highlighting/F-Sy-H.plugin.zsh
