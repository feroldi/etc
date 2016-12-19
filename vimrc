set nocompatible
filetype off

filetype plugin indent on

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set lazyredraw

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

"autocmd BufReadPost,FileReadPost,BufNewFile * 
"     \call system("tmux rename-window `basename " . expand("%") . "`")

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

