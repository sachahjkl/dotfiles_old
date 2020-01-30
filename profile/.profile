# Profile file. Runs on login. Environmental variables are set here.

# Default programs:
export EDITOR="nvim"
export VISUAL="$EDITOR"
export READER="zathura"
export BROWSER="firefox"
export TERMINAL="st"
export SCRIPTS="$HOME/code/scripts"
export FILE="thunar"
export WM="i3"
export DOT="$HOME/code/dotfiles"
export QT_QPA_PLATFORMTHEME="gtk2"
export GOPATH="$HOME/apps/gopath"
export PATH="$PATH:/opt:$SCRIPTS:$HOME:$GOPATH:$GOPATH/bin"

# ~/ Clean-up:
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
#export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

# Other
export LESS=-R
#export LIBGL_ALWAYS_INDIRECT=1

# Start graphical server on tty1 if not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# Switch escape and caps if tty and no passwd required:
#sudo -n loadkeys ~/.local/share/ttymaps/ttymaps.kmap 2>/dev/null


