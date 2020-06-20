#!/bin/bash

## symlink.sh
# Creates symbolic links to the dotfiles and other configuration elements in the repo in various subdirectories of $HOME.
# This script must be run in the directory in which the repo was downloaded.

main() {

  local i=''

  ## Dotfiles
  declare -a DOTFILES=(
    '.bash_aliases'
    '.bash_profile'
    '.bashrc'
    '.giconfig'
    '.profile'
    '.vimrc'
    '.Xmodmap'
    '.Xresources'
  )

  for i in ${DOTFILES[@]}; do
    echo "Creating a symbolic link for ${i##*/} in \$HOME"
    ln -svf ${i##*/} $HOME
  done

  unset DOTFILES


  ## Binaries
  echo "Creating a symbolic link to the binaries directory in \$HOME/.local/bin"
  ln -svf bin $HOME/.local

}

main

