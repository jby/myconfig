#!/bin/bash
# update.sh - script to update all git repos

# Text color variables
txtund=$(tput sgr 0 1)          # Underline
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) #  red
bldgre=${txtbld}$(tput setaf 2) #  green
bldyel=${txtbld}$(tput setaf 3) #  yellow
bldblu=${txtbld}$(tput setaf 4) #  blue
bldmag=${txtbld}$(tput setaf 5) #  magenta
bldcya=${txtbld}$(tput setaf 6) #  cyan
bldwht=${txtbld}$(tput setaf 7) #  white
txtrst=$(tput sgr0)             # Reset
info=${bldwht}*${txtrst}        # Feedback
pass=${bldblu}*${txtrst}
warn=${bldred}*${txtrst}
ques=${bldblu}?${txtrst}

for f in macstuff bigip check_mk dns ks linode scripts ansible
do
  echo "${bldyel}${f}${txtrst}"
  cd $HOME/src/${f}
  git rpull
  git fetch -p
done
cd $HOME/src/puppet
for f in iat stage master prod
do
  echo "${bldyel}${f}${txtrst}"
  git co ${f}
  git rpull
  git fetch -p
done
