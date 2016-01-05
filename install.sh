#!/bin/bash

echo "Creating backup directory ..."
mkdir ~/dotfile_backups
echo "... done"

echo "Setting zshrc ..."
mv ~/.zshrc ~/dotfiles_backups/
ln -s `pwd`/zshrc ~/.zshrc
echo "... done"

echo "Setting neovim ..."
XDG_CONFIG_HOME=~/.config
mkdir $XDG_CONFIG_HOME
ln -s `pwd`/nvim $XDG_CONFIG_HOME/nvim
echo "... done"
