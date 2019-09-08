## osx-assimilation
This is a simple Ansible tool to facilitate automated software installations on Mac OS X. It supports installing dmgs, pkgs, zips, brews, and executing customized shell scripts. It's used for setting up a fresh MAC machine in an automated, repeatable manner.

# Getting Started
Edit the packages.yaml file in the root directory to include packages to install. There are some examples for reference already there. 

# Installing dependencies
Xcode, brew, and ansible are required
Execute ./bootstrap.sh to install dependencies - follow any prompts accordingly

# Run the playbook
To run the playbook simply execute ansible-playbook newmac-playbook.yaml

-------------------------------------------------------------------------
# packages.yaml format
```
software: <-- This is the package name, brew name, cask name, or simple name that will be used to download the target software.
  name: My Software 1.0 <-- This is the friendly name that ansible will display as installing / running the task
  type: [dmg,brew,cask,script,pkg,zip] <-- This is the method/task that will be used to install the requested software.
  url: https://software.mysoftware/mysoftware.dmg <-- OPTIONAL: Only required if you want the tool to download a pkg, zip, or dmg from somewhere.
  script: /bin/bash <-- The interpreter that will be used for "script" method executions. 
```

# Notes 
```
Pre-downloaded packages
 - Any pre-downloaded software should be placed in ./downloads (or defined dlpath in group-vars) and the name of the file should match the "software" tag above. For example software.dmg not "MY Software 1.0.dmg".

Scripts
 - Any custom scripts should be placed in ./scripts (or defined scriptpath in group_vars) and the name should match the "software" tag above, For example sotfware.sh not "My Software 1.0.sh".

 Casks & Brews
 - A list of casks is available here https://formulae.brew.sh/cask/ & brews here https://formulae.brew.sh/formula/
 ```

# packages.yaml examples
```
wget:
  name: wget
  type: brew
keepassxc:
  name: KeepassXC 2.4.3
  type: cask
tweak_script:
  name: Do system tweaks
  type: script
  shell: /bin/php
docker:
  name: Docker
  url: https://download.docker.com/mac/stable/Docker.dmg
  type: dmg
visualcode: 
  name: Visual Studio Code
  url: https://go.microsoft.com/fwlink/?LinkID=620882
  type: zip
```
