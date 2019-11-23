#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|

#export TERM=xterm-256color

# cd in the folder if it exists
shopt -s autocd

# PS1
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Shorter & New PS1 

build_prompt() {
  EXIT=$?               # save exit code of last command
  red='\[\033[38;5;9m\]'    # colors
  green='\[\033[38;5;34m\]'
  blue='\[\033[38;5;74m\]'
  pink='\[\033[38;5;219m\]'
  white='\[\033[38;5;15m\]'
  bold='\[$(tput bold)\]'
  reset='\[$(tput sgr0)\]'
  PS1="$blue\w "

  if [ $EXIT != 0 ]; then  # add arrow color dependent on exit code
    PS1+="$red"
  else
    PS1+="$green"
  fi
  PS1+="→ $green$(parse_git_branch)$reset\\$ " # construct rest of prompt
}

export PROMPT_COMMAND="build_prompt"

# Vi shortcuts
set -o vi

eval "`dircolors`"
# Let there be color in ls!
#export LS_OPTIONS='-hN --color=auto --group-directories-first'

# Alias definitions that should work everywhere
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Extra commands that don't get overriden by pulling changes from the repo
if [ -f ~/.bashrc_extra ]; then
    . ~/.bashrc_extra
fi

# Alias definitions that are specific to my distro
# e.g. Cygwin-only stuff, apt-get shortcuts on Debian, etc.
if [ -f ~/.bash_aliases.distro-specific ]; then
    . ~/.bash_aliases.distro-specific
fi

# Functions

# Quickly find if a file exists in current directory
f() { find . -name "*$1*"; }

# zsh like tab completion
#bind 'set show-all-if-ambiguous on'
#bind 'TAB:menu-complete'


# Sugar
#neofetch
ufetch
