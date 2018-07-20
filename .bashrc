source $HOME/.profile
source $HOME/.shell/alias.sh
source $HOME/.shell/less.sh
source $HOME/.shell/git-completion.sh
source $HOME/.shell/pass-completion.sh
#source $HOME/.shell/clang-completion.sh

# Don't save lines starting with a space, or
# commands that repeat in history.
export HISTCONTROL=ignoreboth:erasedups

# Makes autocomplete work with sudo.
complete -cf sudo

PS1='$([ -d .git ] && printf "$(basename `pwd`):%s\n$" $(git rev-parse --abbrev-ref HEAD) || echo $) '
