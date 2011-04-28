[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Add colors to OS X ls command
export CLICOLOR=1
export LSCOLOR=ExFxCxDxBxegedabagacad


export PATH=/usr/local/bin:${PATH}:/Users/xatter/AndroidSDK/tools:/opt/local/bin

# Tab-Complete git commands
source ~/git-completion.bash

#Show current git branch in prompt
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
