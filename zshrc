zmodload zsh/terminfo

export TERM=screen-256color
export EDITOR=nvim

. ~/.xprofile

bindkey -v

# do I really need this?
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

VI_MODE=' '
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/^}/(main|viins)/ } "
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

export HISTFILE=~/.zhistory
export HISTSIZE=256
export SAVEHIST=256
setopt inc_append_history
setopt extended_history

. $HOME/.shell/alias.sh

autoload -U promptinit && promptinit
autoload -U colors && colors

PROMPT="$ "
RPROMPT="$VI_MODE"

