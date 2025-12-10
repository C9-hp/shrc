#!/bin/bash

if [ -f ~/scripts/shrc/data/temp/auto-proot ]; then
  echo "auto proot distro is on."
  exec proot-distro login debian
else; echo "auto proot distro is off"
fi  


alias another-auto-proot-on="touch ~/scripts/shrc/data/temp/auto-proot"
alias another-auto-proot-off="rm ~/scripts/shrc/data/temp/auto-proot"
