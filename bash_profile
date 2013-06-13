VENDOR_DIR=~/dotfiles/vendor

# Sexy bash prompt
export PS1="\[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]→\[\e[m\] "

# Before hook
if [ -f ~/.bash_profile.before ]; then
  source ~/.bash_profile.before
fi

# Symfony alias
alias sf="php ./app/console"
alias sf-create="composer create-project symfony/framework-standard-edition"

source ${VENDOR_DIR}/symfony2-autocomplete/symfony2-autocomplete.bash
