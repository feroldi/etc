set nocompatible

filetype on
filetype plugin indent on

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set lazyredraw

"set background=dark
colorscheme vs-blue

syntax on

set laststatus=2

set cursorline
set number
set relativenumber
set ruler

" aligned visual block
set virtualedit=block

" Intuitive backspacing.
set backspace=indent,eol,start

" don't indent namespaces in C++
set cino=N-s

" Enable mouse
set mouse=a

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

" Map ESC and movement keys to terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Map movement keys to Control-[h,j,k,l]
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

