# oh-my-zsh settings
# ==================

# Path
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Disable window auto title
DISABLE_AUTO_TITLE="true"

# Disable corrections, they are annoying
DISABLE_CORRECTION="true"

# Display red dots while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

# Init oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Alias
# =====

alias q='exit'
alias c='clear'

# Use neovim
alias vim='nvim'
alias vi='nvim'

# Global settings
# ===============

# Ensure locales are UTF-8 compilant
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# IMPORTANT: Don't set paths or bootstrap other applications inside ths file.
# Use `~/.zshrc.after` instead.

[ -f ~/.zshrc.after ] && source ~/.zshrc.after
