set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vs-blue"

" 231
hi Normal                  ctermfg=16         ctermbg=231
hi Boolean                 ctermfg=19
hi Comment                 ctermfg=240        ctermbg=none    cterm=none
hi Conditional             ctermfg=19
hi Constant                ctermfg=19
hi Cursor                  ctermfg=none       ctermbg=160       cterm=none
hi Debug                   ctermfg=160
hi Define                  ctermfg=19
hi Delimiter               ctermfg=19         ctermbg=none
hi DiffLine                ctermfg=160
hi DiffOldLine             ctermfg=124
hi DiffOldFile             ctermfg=124
hi DiffNewFile             ctermfg=124
hi DiffAdd                 ctermfg=233        ctermbg=194 cterm=none
hi DiffChange              ctermbg=255        cterm=none
hi DiffText                ctermfg=233        ctermbg=189 cterm=none
hi DiffDelete              ctermfg=252        ctermbg=224 cterm=none
hi DiffText                ctermfg=160        ctermbg=none
hi Directory               ctermfg=160
hi Error                   ctermfg=160        ctermbg=none
hi Exception               ctermfg=19
hi Float                   ctermfg=19
hi FoldColumn              ctermfg=234        ctermbg=none
hi Folded                  ctermfg=234        ctermbg=none
hi Function                ctermfg=16
hi Identifier              ctermfg=none                       cterm=none
hi IncSearch               ctermfg=235        ctermbg=207
hi Keyword                 ctermfg=19
hi Label                   ctermfg=19
hi Macro                   ctermfg=240
hi MatchParen              ctermfg=none       ctermbg=252    cterm=bold
hi ModeMsg                 ctermfg=242
hi MoreMsg                 ctermfg=242
hi NonText                 ctermfg=16
hi Number                  ctermfg=16
hi Operator                ctermfg=19                        cterm=none
hi PreCondit               ctermfg=19                        cterm=none
hi PreProc                 ctermfg=19
hi Question                ctermfg=19
hi Repeat                  ctermfg=19
hi Search                  ctermfg=none       ctermbg=252
hi SpecialChar             ctermfg=88
hi SpecialComment          ctermfg=28
hi Special                 ctermfg=19
hi SpecialKey              ctermfg=19
hi Statement               ctermfg=19         ctermbg=none
hi StorageClass            ctermfg=19
hi String                  ctermfg=160
hi Structure               ctermfg=19
hi Tag                     ctermfg=160
hi Title                   ctermfg=25         ctermbg=none    cterm=underline
hi Todo                    ctermfg=16         ctermbg=253
hi Typedef                 ctermfg=19
hi Type                    ctermfg=19
hi Underlined              ctermfg=248        ctermbg=none
hi VertSplit               ctermfg=253        ctermbg=255      cterm=none
hi Visual                  ctermfg=none       ctermbg=250
hi VisualNOS               ctermfg=160        ctermbg=235     cterm=bold
hi WarningMsg              ctermfg=160
hi WildMenu                ctermfg=104        ctermbg=160
hi CursorLine              ctermfg=none       ctermbg=255 cterm=none
hi LineNr                  ctermfg=248        cterm=none
hi CursorLineNr            ctermfg=239        ctermbg=254    cterm=none
hi ErrorMsg                ctermfg=160        ctermbg=none

" html
hi htmlTag                 ctermfg=6
hi htmlEndTag              ctermfg=11
hi htmlTagName             ctermfg=160

" xml
hi xmlTag                  ctermfg=6
hi xmlEndTag               ctermfg=11
hi xmlTagName              ctermfg=160

" statusline
hi StatusLine              ctermfg=231        ctermbg=25       cterm=bold
hi StatusLineNC            ctermfg=231        ctermbg=246      cterm=bold

hi StatusModFlag           ctermfg=160        ctermbg=16       cterm=bold
hi StatusRO                ctermfg=160        ctermbg=16       cterm=bold
hi StatusHLP               ctermfg=160        ctermbg=16       cterm=bold
hi StatusPRV               ctermfg=160        ctermbg=16       cterm=bold
hi StatusFTP               ctermfg=160        ctermbg=16       cterm=bold

