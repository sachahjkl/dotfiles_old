export GOPATH="$HOME/apps/gopath"
export EDITOR="vim"
#export VISUAL="subl"
export VISUAL="$EDITOR"
export BROWSER="firefox"
export TERMINAL="st"
export SCRIPTS="$HOME/code/scripts"
export DOT="$HOME/code/dotfiles"
export FILE="thunar"
export QT_QPA_PLATFORMTHEME="qt5ct"
export PATH="$PATH:/opt:$SCRIPTS:$HOME:$GOPATH:$GOPATH/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
