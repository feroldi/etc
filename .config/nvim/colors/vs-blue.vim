set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vs-blue"

"hi Normal         ctermfg=16    ctermbg=231   cterm=none
hi Normal         ctermfg=16    ctermbg=none  cterm=none
hi Boolean        ctermfg=19    ctermbg=none  cterm=none
hi Comment        ctermfg=240   ctermbg=none  cterm=none
hi Conditional    ctermfg=19    ctermbg=none  cterm=none
hi Constant       ctermfg=19    ctermbg=none  cterm=none
hi Cursor         ctermfg=none  ctermbg=160   cterm=none
hi Debug          ctermfg=160   ctermbg=none  cterm=none
hi Define         ctermfg=19    ctermbg=none  cterm=none
hi Delimiter      ctermfg=19    ctermbg=none  cterm=none
hi DiffLine       ctermfg=160   ctermbg=none  cterm=none
hi DiffOldLine    ctermfg=124   ctermbg=none  cterm=none
hi DiffOldFile    ctermfg=124   ctermbg=none  cterm=none
hi DiffNewFile    ctermfg=124   ctermbg=none  cterm=none
hi DiffAdd        ctermfg=233   ctermbg=194   cterm=none
hi DiffChange     ctermfg=none  ctermbg=255   cterm=none
hi DiffText       ctermfg=233   ctermbg=189   cterm=none
hi DiffDelete     ctermfg=252   ctermbg=224   cterm=none
hi DiffText       ctermfg=160   ctermbg=none  cterm=none
hi Directory      ctermfg=160   ctermbg=none  cterm=none
hi Error          ctermfg=160   ctermbg=none  cterm=none
hi Exception      ctermfg=19    ctermbg=none  cterm=none
hi Float          ctermfg=19    ctermbg=none  cterm=none
hi FoldColumn     ctermfg=234   ctermbg=none  cterm=none
hi Folded         ctermfg=234   ctermbg=none  cterm=none
hi Function       ctermfg=16    ctermbg=none  cterm=none
hi Identifier     ctermfg=none  ctermbg=none  cterm=none
hi IncSearch      ctermfg=235   ctermbg=207   cterm=none
hi Keyword        ctermfg=19    ctermbg=none  cterm=none
hi Label          ctermfg=19    ctermbg=none  cterm=none
hi Macro          ctermfg=240   ctermbg=none  cterm=none
hi MatchParen     ctermfg=none  ctermbg=252   cterm=bold
hi ModeMsg        ctermfg=242   ctermbg=none  cterm=none
hi MoreMsg        ctermfg=242   ctermbg=none  cterm=none
hi NonText        ctermfg=16    ctermbg=none  cterm=none
hi Number         ctermfg=16    ctermbg=none  cterm=none
hi Operator       ctermfg=19    ctermbg=none  cterm=none
hi PreCondit      ctermfg=19    ctermbg=none  cterm=none
hi PreProc        ctermfg=19    ctermbg=none  cterm=none
hi Question       ctermfg=19    ctermbg=none  cterm=none
hi Repeat         ctermfg=19    ctermbg=none  cterm=none
hi Search         ctermfg=none  ctermbg=252   cterm=none
hi SpecialChar    ctermfg=88    ctermbg=none  cterm=none
hi SpecialComment ctermfg=28    ctermbg=none  cterm=none
hi Special        ctermfg=19    ctermbg=none  cterm=none
hi SpecialKey     ctermfg=19    ctermbg=none  cterm=none
hi Statement      ctermfg=19    ctermbg=none  cterm=none
hi StorageClass   ctermfg=19    ctermbg=none  cterm=none
hi String         ctermfg=160   ctermbg=none  cterm=none
hi Structure      ctermfg=19    ctermbg=none  cterm=none
hi Tag            ctermfg=160   ctermbg=none  cterm=none
hi Title          ctermfg=25    ctermbg=none  cterm=underline
hi Todo           ctermfg=16    ctermbg=253   cterm=none
hi Typedef        ctermfg=19    ctermbg=none  cterm=none
hi Type           ctermfg=19    ctermbg=none  cterm=none
hi Underlined     ctermfg=248   ctermbg=none  cterm=none
hi VertSplit      ctermfg=253   ctermbg=255   cterm=none
hi Visual         ctermfg=none  ctermbg=250   cterm=none
hi VisualNOS      ctermfg=160   ctermbg=235   cterm=bold
hi WarningMsg     ctermfg=160   ctermbg=none  cterm=none
hi WildMenu       ctermfg=104   ctermbg=160   cterm=none
hi CursorLine     ctermfg=none  ctermbg=255   cterm=none
hi LineNr         ctermfg=248   ctermbg=none  cterm=none
hi CursorLineNr   ctermfg=239   ctermbg=254   cterm=none
hi ErrorMsg       ctermfg=160   ctermbg=none  cterm=none

" html
hi htmlTag                 ctermfg=21
hi htmlEndTag              ctermfg=21
hi htmlTagName             ctermfg=160

" xml
hi xmlTag                  ctermfg=21
hi xmlEndTag               ctermfg=21
hi xmlTagName              ctermfg=160

" statusline
hi StatusLine              ctermfg=231        ctermbg=25       cterm=bold
hi StatusLineNC            ctermfg=231        ctermbg=246      cterm=bold

hi StatusModFlag           ctermfg=160        ctermbg=16       cterm=bold
hi StatusRO                ctermfg=160        ctermbg=16       cterm=bold
hi StatusHLP               ctermfg=160        ctermbg=16       cterm=bold
hi StatusPRV               ctermfg=160        ctermbg=16       cterm=bold
hi StatusFTP               ctermfg=160        ctermbg=16       cterm=bold
