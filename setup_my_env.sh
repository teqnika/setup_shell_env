#!/bin/bash

# Delete zsh_dot_file and Create new alias(Symlink)

zsh_config_files=("zshrc" "zlogin" "zlogout" "zpreztorc" "zprofile" "zshenv")

# Delete 

for e in ${zsh_config_files[@]}; do
  unlink ~/.${e}
done


for e in ${zsh_config_files[@]}; do
  test -f $(pwd)/zdot/$e && ln -s $(pwd)/zdot/$e ~/.$e || echo "$e is not found"
done

