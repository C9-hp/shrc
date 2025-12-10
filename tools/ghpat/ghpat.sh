#/bin/bash

printf 'Which account? \n\n' 
# whichAcc = read 


directories=(~/scripts/shrc ~/mytree/.shrc); found=false;
for dir in "${directories[@]}"; do
  if [ -d "$dir" ]; then found=true; 
    cat "$dir/tools/ghpat/pats"; 
  fi
done

if [ ! "$found" ]; then echo "Error: Directory shrc not found"; fi


