#!/bin/bash

# Installing Path
USERFILES=/Users/crunchy
DOTFILES=$USERFILES/Documents/srv/code/dotfiles

# Install vim dotfile; only if the Symlink doesn't exists or is bad
if [ -f $DOTFILES/vim/.vimrc ] && [ ! -L $USERFILES/.vimrc ]; then
  ln -s $DOTFILES/vim/.vimrc $USERFILES/.vimrc 
fi

if [ -f $DOTFILES/zsh/.zshrc ] && [ ! -L $USERFILES/.zshrc ]; then
  ln -s $DOTFILES/zsh/.zshrc $USERFILES/.zshrc 
fi

if [ -f $DOTFILES/hg/.hgrc ] && [ ! -L $USERFILES/.hgrc ]; then
  ln -s $DOTFILES/hg/.hgrc $USERFILES/.hgrc 
fi
