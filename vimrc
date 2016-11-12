set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set lazyredraw

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"set background=dark
colorscheme butter

syntax on

set laststatus=2
"set cursorline
set number
set relativenumber

" Intuitive backspacing.
set backspace=indent,eol,start

set ruler

" Maps copy-paste commands
map <F11> :!xclip -sel c<CR>
map <F12> :r !xclip -o -sel c<CR>

noremap H ^
noremap L $
noremap ,<space> :nohlsearch<CR>

" Disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Maps j/k to be gj/gk, but use default ones when
" using them with a count.
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

