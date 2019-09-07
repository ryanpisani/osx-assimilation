# osx-assimilation
This is a simple Ansible tool to facilitate automated software installations on Mac OS X. It supports installing dmgs, pkgs, zips, brews, and executing customized shell scripts. It's used for setting up a fresh MAC machine in an automated, repeatable manner.

# Getting Started
Edit the packages.yaml file in the root directory to include packages to install. There are some examples for reference already there. 

# Installing dependencies
Xcode, brew, and ansible are required
Execute ./bootstrap.sh to install dependencies - follow any prompts accordingly

# Run the playbook
To run the playbook simply execute ansible-playbook newmac-playbook.yaml

