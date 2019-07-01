source $HOME/.profile

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
alias mpvnv='mpv --no-video'
alias mpvcp='mpv $(xclip -o -sel c) --ytdl-format mp4'
alias mpvcpnv='mpv --no-video $(xclip -o -sel c)'
alias x='startx'
alias p='ping pong'
alias sxiv='sxiv -qr'

# xclip
alias xpaste='xclip -o -sel c'
alias xcopy='xclip -sel c'

# Get movie subtitles.
alias getsub='subberthehut -l pob --same-name'
