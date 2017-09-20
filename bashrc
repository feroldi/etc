. $HOME/.xprofile
. $HOME/.shell/alias.sh
. $HOME/.shell/less.sh
. $HOME/.shell/git-completion.sh
. $HOME/.shell/pass-completion.sh
. $HOME/.shell/clang-completion.sh

# Don't save lines starting with a space, or
# commands that repeat in history.
export HISTCONTROL=ignoreboth:erasedups

PS1='$([ -d .git ] && printf "$(basename `pwd`):%s\n$" $(git rev-parse --abbrev-ref HEAD) || echo $) '

