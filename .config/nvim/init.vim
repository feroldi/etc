set nocompatible

filetype on
filetype plugin indent on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'ciaranm/detectindent', {'for': ['c', 'cpp']}
Plug 'rhysd/vim-clang-format', {'for': ['c', 'cpp', 'java', 'typescript']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}
Plug 'dart-lang/dart-vim-plugin', {'for': ['dart']}
Plug 'leafgarland/typescript-vim', {'for': ['typescript']}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'for': ['cpp']}
call plug#end()

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Indent 2 spaces for typescript files.
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2

" Indent 2 spaces for yaml files.
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Auto-format on C and C++ source files.
autocmd FileType c,cpp ClangFormatAutoEnable

set lazyredraw

syntax on

set laststatus=2

set cursorline
set number
set relativenumber
set ruler

" Required by LanguageClient-neovim for operations modifying multiple buffers
" like rename
set hidden

" Aligned visual block
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

" Makes C++ module interface units use C++ syntax.
autocmd BufRead,BufNewFile *.mxx set filetype=cpp

" Map H and L to HOME and END
"noremap H ^
"noremap L $

let mapleader = ","

noremap <leader><space> :nohlsearch<CR>

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
let g:clang_format#enable_fallback_style = 1

" Enable Dart style guide syntax (like 2-space indentation).
let dart_style_guide = 2

map ,C :ClangFormat
map ,R :RustFmt

" Disables display line numbers for terminal mode.
au TermOpen * setlocal nonumber norelativenumber

" CoC configuration

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
