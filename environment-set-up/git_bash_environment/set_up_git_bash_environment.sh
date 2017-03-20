#!/bin/bash
homedir="$HOME"
initdir="$PWD"

cd "$homedir"

# Make a backup
cp .bashrc .bashrc.bckp
rm .bashrc 

# New dir for git scripts and add them into bashrc
if [ -d ".git_provided_scripts" ]; then
  rm -rf .git_provided_scripts
fi
cp -r "$initdir"/git_provided_scripts .git_provided_scripts

# Copy the new bash
cp "$initdir"/bashrc .bashrc

# Applying changes
source .bashrc

# Going back to initial dir
cd "$initdir"
