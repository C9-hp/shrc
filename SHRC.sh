#!/bin/bash
# ALIASSES 
# Main

source ~/scripts/shrc/TOOLS.sh
source ~/scripts/shrc/another/another.sh
source ~/scripts/shrc/shortcuts.sh

alias menu='~/scripts/shrc/menu.sh'
alias ls='ls --color -vh --group-directories-first'
alias vi='vim'

# TEMPORARY 
cwd=$(pwd); if [[ "$cwd" == "/home/c9" ]]; then cd Main; fi 

