# Don't save lines starting with a space, or
# commands that repeat in history.
export HISTCONTROL=ignoreboth:erasedups

# Makes autocomplete work with sudo.
complete -cf sudo

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\033[01;33m\]${PWD#"${PWD%/*/*}/"}\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\n\$ '

# Colors
default=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
purple=$(tput setaf 5)
orange=$(tput setaf 9)

# Less colors for man pages
export PAGER=less
# Begin blinking
export LESS_TERMCAP_mb=$red
# Begin bold
export LESS_TERMCAP_md=$orange
# End mode
export LESS_TERMCAP_me=$default
# End standout-mode
export LESS_TERMCAP_se=$default
# Begin standout-mode - info box
export LESS_TERMCAP_so=$purple
# End underline
export LESS_TERMCAP_ue=$default
# Begin underline
export LESS_TERMCAP_us=$green

# Aliases

# daily-thought
alias dl='daily-thought.py --work-dir ~/usr/daily-thoughts/'

# asm
alias objdump='objdump -M intel'

# general
alias less='less -R'
alias ls='ls --color=auto -F'
alias la='ls --color=auto -aF'
alias grep='grep --color=auto'
alias p='ping 1.1.1.1'
alias sxiv='sxiv -qr'

# xclip
alias xpaste='xclip -o -sel c'
alias xcopy='xclip -sel c'

# Get movie subtitles.
alias getsub='subberthehut -l pob --same-name'

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

# Loads nvm only when one runs `nvm` for the first time in a shell session.
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

# Loads node from nvm only when one runs `node` for the first time in a shell session.
node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

# Loads npm from nvm only when one runs `npm` for the first time in a shell session.
npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}
