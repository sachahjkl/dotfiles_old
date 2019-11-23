#Alias/Shortcuts

# Default to human readable figures
alias df='df -h'
alias du='du -h'

#ls
alias ls='ls'
alias ll='ls -lh'
alias l='ls -lhA'
alias la='ls -a'
alias lla='ls -hla'
# if 'lsd' command is installed, replace ls with it
if command -v lsd 1&> /dev/null  ;then
	alias ls='lsd $LS_OPTIONS'
fi

##Commands
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias pd='pwd'
alias pd='pwd'
alias t='time'
alias k='kill'
alias del="rm"
alias rm="trash"
alias svim="sudo nvim"
alias vim="nvim"
alias v="vim"
alias r="sudo ranger"
alias null='/dev/null'
alias grep="grep --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias mkd="mkdir -pv"
alias pacman="sudo pacman"
alias p='sudo pacman'
alias scrot="scrot '%Y-%m-%d-%h-%m-%s_\$wx\$h.png' -e 'mv \$f ~/img/scrot/'"
alias dot="cd $DOT"

# Aptitude
alias apti="sudo apt install"
alias apts="sudo apt search"
alias aptupg="sudo apt upgrade"
alias aptupd="sudo apt update"
alias aptrem="sudo apt remove"
alias aptclean="sudo apt autoremove"
alias aptfull="sudo apt full-upgrade"

# Directories
alias home='cd ~'
alias root='cd /'
alias sconfig='vim ~/.ssh/config'

# Common project directories
alias dl='cd ~/dl'
alias scripts='cd $SCRIPTS'
alias img='cd ~/img'
alias docs='cd ~/docs'

#Git
alias g='git'

# Shortcuts to vimrc and bashrc
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias bashaliases='vim ~/.bash_aliases'
alias profile='vim ~/.profile'
alias loadbash='source ~/.bashrc'
alias loadaliases='source ~/.bash_aliases'
alias loadprofile='source ~/.profile'
alias xinitrc="vim ~/.xinitrc"
alias xres="vim ~/.Xresources"

# Sugar
#alias n="neofetch"
alias n="bonsai -n -L 20 -g 35,20 > $SCRIPTS/neofetch/my_bonsai_art.txt && neofetch --ascii $SCRIPTS/neofetch/my_bonsai_art.txt --ascii_colors 11 3 10 2 0"
