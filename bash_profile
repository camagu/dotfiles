VENDOR_DIR=~/dotfiles/vendor

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

# Symfony
alias sf="./app/console"
alias sf-create="composer create-project symfony/framework-standard-edition"
source ${VENDOR_DIR}/symfony2-autocomplete/symfony2-autocomplete.bash

