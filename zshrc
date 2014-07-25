# oh-my-zsh settings
# ==================

# Path
ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Disable window auto title, normally set by tmux
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

# Global settings
# ===============

# Ensure locales are UTF-8 compilant, tmux generates remnant characters if it
#   isn't
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# IMPORTANT: Don't set paths or bootstrap other applications here, do it in
#   .zshenv
