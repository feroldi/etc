#!/bin/sh

PATH="/usr/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/opt/android-sdk/tools/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/bin:$PATH"

# For flutter mobile development tool
PATH="$HOME/usr/repo/flutter/bin:$PATH"

# For poetry python package manager
PATH="$HOME/.poetry/bin:$PATH"

# For GHCUP (haskell package manager)
PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

export PATH
export ANDROID_HOME=/opt/android-sdk
export JAVA_HOME=/usr/lib/jvm/default
export TERM=screen-256color

export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

# Use local virtualenv rather than global site packages.
#source $HOME/.pythonenv/bin/activate

# Make pipenv ignore previous local virtualenv, and create a new one per
# project.
export PIPENV_IGNORE_VIRTUALENVS=1

# Use cargo's per user environment for packages.
source $HOME/.cargo/env

# Initialize nvm PATH configuration, bash completion etc.
#source /usr/share/nvm/init-nvm.sh

# GPG agent support for SSH
#
# The test involving the gnupg_SSH_AUTH_SOCK_by variable is for the case
# where the agent is started as gpg-agent --daemon /bin/sh, in which case
# the shell inherits the SSH_AUTH_SOCK variable from the parent, gpg-agent
# unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
fi

export GPG_TTY=$(tty)

# Refresh gpg-agent tty in case user switches into an X session.
gpg-connect-agent updatestartuptty /bye >/dev/null
