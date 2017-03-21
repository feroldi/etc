set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vs-blue"


hi Normal                  ctermfg=16 ctermbg=231
hi Boolean                 ctermfg=20
hi Comment                 ctermfg=240      ctermbg=none    cterm=none
hi Conditional             ctermfg=20
hi Constant                ctermfg=20
hi Cursor                  ctermfg=none     ctermbg=1       cterm=none
hi Debug                   ctermfg=160
hi Define                  ctermfg=24
hi Delimiter               ctermfg=24       ctermbg=none
hi DiffLine                ctermfg=1 
hi DiffOldLine             ctermfg=124
hi DiffOldFile             ctermfg=124
hi DiffNewFile             ctermfg=124
hi DiffAdd                 ctermfg=233 ctermbg=194 guifg=#003300 guibg=#DDFFDD gui=none cterm=none
hi DiffChange              ctermbg=255 guibg=#ececec gui=none   cterm=none
hi DiffText                ctermfg=233 ctermbg=189  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
hi DiffDelete              ctermfg=252 ctermbg=224 guifg=#DDCCCC guibg=#FFDDDD gui=none cterm=none
hi DiffText                ctermfg=6        ctermbg=none
hi Directory               ctermfg=6
hi Error                   ctermfg=160        ctermbg=none
hi Exception               ctermfg=24
hi Float                   ctermfg=20
hi FoldColumn              ctermfg=234        ctermbg=none
hi Folded                  ctermfg=234        ctermbg=none
hi Function                ctermfg=16
hi Identifier              ctermfg=none                       cterm=none
hi IncSearch               ctermfg=235      ctermbg=207
hi Keyword                 ctermfg=20
hi Label                   ctermfg=24
hi Macro                   ctermfg=240
hi MatchParen              ctermfg=none       ctermbg=252    cterm=bold
hi ModeMsg                 ctermfg=0
hi MoreMsg                 ctermfg=2
hi NonText                 ctermfg=0 
hi Number                  ctermfg=none
hi Operator                ctermfg=20                        cterm=none
hi PreCondit               ctermfg=20                        cterm=none
hi PreProc                 ctermfg=20
hi Question                ctermfg=20
hi Repeat                  ctermfg=20
hi Search                  ctermfg=none      ctermbg=252
hi SpecialChar             ctermfg=88
hi SpecialComment          ctermfg=28
hi Special                 ctermfg=20
hi SpecialKey              ctermfg=20
hi Statement               ctermfg=20        ctermbg=none
hi StorageClass            ctermfg=20
hi String                  ctermfg=1
hi Structure               ctermfg=20
hi Tag                     ctermfg=9
hi Title                   ctermfg=25       ctermbg=none    cterm=underline
hi Todo                    ctermfg=16        ctermbg=253
hi Typedef                 ctermfg=24
hi Type                    ctermfg=24
hi Underlined              ctermfg=0        ctermbg=none
hi VertSplit               ctermfg=24       ctermbg=0       cterm=none
hi Visual                  ctermfg=none     ctermbg=250
hi VisualNOS               ctermfg=1        ctermbg=235     cterm=bold
hi WarningMsg              ctermfg=1   
hi WildMenu                ctermfg=104      ctermbg=1
hi CursorLine              ctermfg=none     ctermbg=255 cterm=none
hi LineNr                  ctermfg=248        cterm=none
hi CursorLineNr            ctermfg=239      ctermbg=254    cterm=none
hi ErrorMsg                ctermfg=1        ctermbg=none

" html
hi htmlTag                 ctermfg=6
hi htmlEndTag              ctermfg=11
hi htmlTagName             ctermfg=9

" xml
hi xmlTag                  ctermfg=6
hi xmlEndTag               ctermfg=11
hi xmlTagName              ctermfg=9

" statusline
"hi StatusLine              ctermfg=255      ctermbg=246      cterm=bold
"hi StatusLineNC            ctermfg=0        ctermbg=232      cterm=bold
hi StatusLine              ctermfg=231      ctermbg=24      cterm=bold
hi StatusLineNC            ctermfg=231        ctermbg=246      cterm=bold

hi StatusModFlag           ctermfg=1        ctermbg=16       cterm=bold
hi StatusRO                ctermfg=9        ctermbg=16       cterm=bold
hi StatusHLP               ctermfg=2        ctermbg=16       cterm=bold
hi StatusPRV               ctermfg=6        ctermbg=16       cterm=bold
hi StatusFTP               ctermfg=4        ctermbg=16       cterm=bold

