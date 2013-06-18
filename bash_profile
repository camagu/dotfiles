VENDOR_DIR=~/dotfiles/vendor
OS=`uname`

# Sexy bash prompt
export PS1="\[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]→\[\e[m\] "

# Before hook
if [ -f ~/.bash_profile.before ]; then
  source ~/.bash_profile.before
fi

# Git
source ${VENDOR_DIR}/git-completion.bash/git-completion.bash

alias g="git"
complete -o default -o nospace -F _git g

# Server
alias db="mysql -u root"

# Symfony
alias sf="./app/console"
alias sf-test="phpunit -c app"
alias sf-create="composer create-project symfony/framework-standard-edition"
source ${VENDOR_DIR}/symfony2-autocomplete/symfony2-autocomplete.bash

# General alias

alias c="clear"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

alias grep="grep --color=auto"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

if [ "$os" == 'Darwin' ]; then
  alias ls="ls -G"
else
  alias ls="ls --color=auto"
fi

alias ll="ls -la"
alias l.="ls -d .*"

alias ls-="ls | grep"
alias ll-="ll | grep"

alias h="history"
alias h-="history | grep"

