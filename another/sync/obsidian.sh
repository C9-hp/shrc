#!/bin/bash

# Saving some color variables...

Black_="\033[30m";        BrightBlack_="\033[90m"
Red_="\033[31m";          BrightRed_="\033[91m"
Green_="\033[32m";        BrightGreen_="\033[92m"
Yellow_="\033[33m";       BrightYellow_="\033[93m"
Blue_="\033[34m";         BrightBlue_="\033[94m"
Magenta_="\033[35m";      BrightMagenta_="\033[95m"
Cyan_="\033[36m";         BrightCyan_="\033[96m"
White_="\033[37m";        BrightWhite_="\033[97m"
Err_="\033[30;41m";       WHITE_="\033[37;40m";

# Sourc SHRC to use my projects commands: 
source ~/scripts/shrc/SHRC.sh

# Check if its my phone or pc, check for direcroey
if [ -d  "/home/c9/Documents/obsidian" ]; then 
  cd /home/c9/Documents/obsidian
elif [ -d "/storage/emulated/0/Documents/obsidian" ]; then 
  cd "/storage/emulated/0/Documents/obsidian" ;
else 
  printf " ${Err_}Err${WHITE_}:${Yellow_}\
  We dont know where the repo is! ${white_} \n"; 
  exit 1; fi

# Propting We passed directory check successfully!
printf "   Successfully entered \"${Yellow_}$(pwd)${White_}\"\n" ; 

# PULLING REPO TO MAKE SURE IT'S UP TO DATE...
printf "   ${Blue_}Pulling data...${White}";
# git pull 1> /dev/null;
sleep 1; printf "  ${Cyan_}Done ${BrightGreen_}✔${White_} \n"

# Checking if repository is clean or not...
status=$(git status)
if [[ $status == *"nothing to commit, working tree clean"* ]]; then
  printf "No changes to commit! \n"; exit 0; fi;


# Commiting changes and new version ...
printf "   ${Blue_}Commiting changes...${White}"
~/scripts/shrc/tools/ver/ver.sh build 1> /dev/null
git add -A; git commit -am "obsidin synced" 1> /dev/null ; 
printf "  ${Cyan_}Done ${BrightGreen_}✔${White_} \n"; 

# Pushing repo...
printf "   ${Blue_}Pushing data...${White}";
git push 1> /dev/null; 
printf "  ${Cyan_}Done ${BrightGreen_}✔${White_} \n";
printf "   ${BrightGreen_}Local branch is up to date now \
  ${White_} \n";

