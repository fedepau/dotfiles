# executables
export PATH=/home/fedepau/.local/bin/programs:$PATH
export PATH=/home/fedepau/.local/bin/scripts:$PATH
export PATH=/home/fedepau/.local/bin/statusbar:$PATH

# xdg base dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# nvim
export EDITOR=nvim
export VISUAL=nvim

# zsh
export ZDOTDIR="$HOME/.config/zsh"
export HISTFILE="$ZDOTDIR/histfile"
export HISTSIZE=1000000
export SAVEHIST=1000000

# jupyter
export JUPYTER_CONFIG_DIR="$HOME/.config/jupyter"