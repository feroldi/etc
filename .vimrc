set nocompatible

filetype on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'ciaranm/detectindent', {'for': ['c', 'cpp']}
Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}
call plug#end()

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set lazyredraw

syntax on

set laststatus=2

set cursorline
set number
set relativenumber
set ruler

" Makes C++ interface units use C++ syntax.
autocmd BufRead,BufNewFile *.mxx set filetype=cpp

" aligned visual block
set virtualedit=block

" Intuitive backspacing.
set backspace=indent,eol,start

" Enable mouse
set mouse=a

"set background=dark
colorscheme jellybeans

" Words are kept when line-breaking
set linebreak

" Maintain undo history between sessions
set undodir=/tmp/vim-undo
set undofile

" Ignore files vim doesn't use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" Map H and L to HOME and END
"noremap H ^
"noremap L $

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

" Removes trailing whitespaces from every line.
function! TrimTrailingWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfunction

" Turns a CamelCase style into a snake_case one in current line.
" separator is the character to be used between words (e.g. underscore, hyphen
" etc).
function! CamelToSnake(separator)
  s/\<\u\|\l\u/\=len(submatch(0)) == 1 ? tolower(submatch(0)) : submatch(0)[0].a:separator.tolower(submatch(0)[1])/g
endfunction

" Removes trailing whitespaces on save.
autocmd BufWritePre <buffer> call TrimTrailingWhitespace()

" Wraps words to 80 characters per line.
function! SwitchToTypewriting()
  set textwidth=80
  set spell spelllang=en,pt
endfunction

" Make vim-clang-format use the .clang-format file for the styling.
let g:clang_format#detect_style_file = 1

" Do nothing when .clang-format is not found.
let g:clang_format#enable_fallback_style = 0

map ,C :ClangFormat
map ,R :RustFmt

" Disables display line numbers for terminal mode.
au TermOpen * setlocal nonumber norelativenumber
