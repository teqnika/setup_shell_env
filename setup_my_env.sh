#!/bin/bash

# Install git and zsh
sudo apt install -y git zsh

# Install zpresto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Make Directory For git repositories
mkdir ~/repos 
cd ~/repos

# Clone from 
git clone git@github.com:teqnika/setup_shell_env.git

# Delete zsh_dot_file and Create new alias(Symlink)

zsh_config_files=("zshrc" "zlogin" "zlogout" "zpreztorc" "zprofile" "zshenv")


for e in ${zsh_config_files[@]}; do
  test -f $(pwd)/zdot/$e && ln -s $(pwd)/zdot/$e ~/.$e || echo "$e is not found"
done

