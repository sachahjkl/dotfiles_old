export EDITOR="nvim"
export VISUAL="$EDITOR"
export READER="zathura"
export BROWSER="firefox"
export TERMINAL="st"
export SCRIPTS="$HOME/code/scripts"
export FILE="thunar"
export DOT="$HOME/code/dotfiles"
export QT_QPA_PLATFORMTHEME="gtk2"
export GOPATH="$HOME/apps/gopath"
export PATH="$PATH:/opt:$SCRIPTS:$HOME:$GOPATH:$GOPATH/bin"
#export LIBGL_ALWAYS_INDIRECT=1

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
