#!/bin/bash

directories=(~/scripts/shrc ~/mytree/.shrc); found=false;

# Detecting SHRC directory 
for dir in "${directories[@]}"; do
  if [ -d "$dir" ]; then found=true; 
    source "$dir/TOOLS.sh"
    source "$dir/another/another.sh"
    source "$dir/shortcuts.sh"
    alias menu="$dir/menu.sh"
    break
  fi
done

# Directpry doesn't exist.
if [ ! "$found" ]; then echo "Error: failed to detect the location of directory shrc"; fi


# ALIASSES 
alias ls='ls --color -vh --group-directories-first'
alias vi='vim'

# TEMPORARY 
# cwd=$(pwd); if [[ "$cwd" == "/home/c9" ]]; then cd Main; fi 

# TERMUX
if [ -d "/data/data/com.termux" ]; then source ~/scripts/shrc/termux-shrc.sh; fi
