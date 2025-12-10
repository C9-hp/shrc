#/bin/bash

directories=(~/scripts/shrc ~/mytree/.shrc); found=false;
for dir in "${directories[@]}"; do 
  if [ -d "$dir" ]; then found=true; 
    alias ghpat="$dir/tools/ghpat/ghpat.sh"
    alias ver="$dir/tools/ver/ver.sh"   
  fi
done

if [ ! "$found" ]; then echo "Error: Directory shrc not found"; fi
