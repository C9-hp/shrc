#/bin/bash

directories=(~/scripts/shrc ~/mytree/.shrc); found=false;
for dir in "${directories[@]}"; do 
  if [ -d "$dir" ]; then found=true; source "$dir/another/sync/sync.sh"; fi
done

if [ ! "$found" ]; then echo "Error: Directory shrc not found"; fi
