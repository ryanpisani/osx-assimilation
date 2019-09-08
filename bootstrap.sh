#!/bin/bash
#Bootstrap homebrew & xcode

xcode-select --install
echo -n "Press ENTER to continue once Xcode has been Installed: "
read ENTER
echo -e "Installing HomeBrew\n"
sleep 2
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -e "Installing Ansible\n"
sleep 2
brew install ansible
if [[ $? -eq 0 ]]; then 
  echo -e "\nYou may now execute \"ansible-playbook newmac.yaml\"\n"
fi
