#!/bin/bash

DOTFILES_PATH=~/dotfiles

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Hombrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "... done"
fi

if ! brew bundle check > /dev/null 2>&1; then
  echo "Installing dependencies ..."
  brew bundle install
  echo "... done"
fi

if ! git config --global user.name > /dev/null; then
  echo "Git username:"
  read github_user_name
  if [ "$github_user_name" != "" ]; then
    git config --global user.name "${github_user_name}"
  fi
fi

if ! git config --global user.email > /dev/null; then
  echo "Git user email:"
  read github_user_email
  if [ "$github_user_email" != "" ]; then
    git config --global user.email "${github_user_email}"
  fi
fi

if ! grep "$(command -v zsh)" /etc/shells > /dev/null 2>&1; then
  echo "Adding ZSH to available shells ..."
  echo "$(command -v zsh)" | sudo tee -a /etc/shells > /dev/null
  echo "... done"
fi

user_shell=`dscl . -read /Users/$(whoami) UserShell | cut -d' ' -f2 -`
if [ "$(command -v zsh)" != $user_shell ]; then
  echo "Setting ZSH as default shell ..."
  chsh -s $(command -v zsh)
  echo "... done"
fi

if ! [ -d ~/.oh-my-zsh ]; then
  echo "Installing Oh My ZSH! ..."
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "... done"
fi

if ! [ -d $DOTFILES_PATH ]; then
  echo "Cloning camagu/dotfiles ..."
  git clone https://github.com/camagu/dotfiles.git $DOTFILES_PATH
  echo "... done"
fi

if ! [ -d ~/dotfiles_backups ]; then
  echo "Creating backup directory ..."
  mkdir ~/dotfiles_backups
  echo "... done"
fi

if ! [ "$DOTFILES_PATH/zshrc" = "$(readlink ~/.zshrc)" ]; then
  echo "Setting zshrc ..."
  mv ~/.zshrc ~/dotfiles_backups/zshrc-`date "+%Y.%m.%d-%H.%M.%S"` > /dev/null 2>&1
  ln -s $DOTFILES_PATH/zshrc ~/.zshrc
  echo "... done"
fi

XDG_CONFIG_HOME=~/.config
if ! [ "$DOTFILES_PATH/nvim" = "$(readlink ${XDG_CONFIG_HOME}/nvim)" ]; then
  echo "Setting neovim ..."
  mv $XDG_CONFIG_HOME/nvim ~/dotfiles_backups/nvim-`date "+%Y.%m.%d-%H.%M.%S"` > /dev/null 2>&1
  mkdir $XDG_CONFIG_HOME > /dev/null 2>&1
  ln -s $DOTFILES_PATH/nvim $XDG_CONFIG_HOME/nvim
  echo "... done"
fi

if [ "$(git config --global core.editor)" != "nvim" ]; then
  echo "Setting neovim as default editor for git ..."
  git config --global core.editor nvim
  echo "... done"
fi
