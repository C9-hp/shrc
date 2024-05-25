#!/bin/bash
newver() {
  shorten_number () {
    ls
  }
  if [ ! -z ${0} ]; then
    full_version=${major}.${minor}.${micro}.${build}; 
  else 
    full_version=${PREFIX}${prefix_sign}${major}.${minor}.${micro}.${build}; 
  fi
  echo $full_version
}
# If this is the root of project:
while [ 0 = 0 ]; do 
  if [ -d "./.git" ]; then break; 
  elif  [ $(pwd) == "/" ];then printf "\033[0;31mNo git repository found! \n"; exit 1; 
    fi; cd ..; done
###########################################################
[ -d .dev-info ] || mkdir -p .dev-info
cd .dev-info
if [ ! -f info ]; then 
  printf "whats the initial version of your repo? (prefix_major.minor.micro.build) \n"
  printf "Initial version: "; read initial_version 
  echo $initial_version > info ; echo "Done!"
else
  old_version=$(head -n 1 info); VERSION=${old_version}; 
  # Split AU_NAME into prefix and version number
  if [[ $version == *"-"* ]]; then 
    IFS='-' read -ra PREFIX_VER <<< "$old_version"
    PREFIX=${PREFIX_VER[0]}
    VERSION=${PREFIX_VER[1]}; fi
  # Split version number into major, minor, micro, and build
  IFS='.' read -ra VER <<< "$VERSION"
  major=${VER[0]}; minor=${VER[1]}; micro=${VER[2]}; build=${VER[3]}
  if [ $# -eq 0 ]; then :;
  elif [ $1 == "major" ]; then ((major++)); minor=0; micro=0; build=0;
  elif [ $1 == "minor" ]; then ((minor++)); micro=0; build=0;
  elif [ $1 == "micro" ]; then ((micro++)); build=0;
  elif [ $1 == "build" ]; then ((build++)); 
  else printf "\033[0;31mERR:\033[0m Unknown command used \n"; exit 1 ; fi
  full_version=$(newver) 
  prefix_sign="-"
  # if [[ $version == *"-"* ]]; then 
    # full_version=${PREFIX}${prefix_sign}${major}.${minor}.${micro}.${build};
  # else full_version=${major}.${minor}.${micro}.${build}; fi
  echo "Version: $full_version"
  echo $full_version > info 
  git add info
fi
