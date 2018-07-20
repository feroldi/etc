" don't indent namespaces.
"N-s

" Placement of jump labels into the scope.
"Ls

" Place case labels 2 characters from the indent of switch.
":2

" Place access visibility (public, private, protected) 0 characters from the
" indent of the block they are in.
"g0

" Indent base class declarations and ctors initializations if they start in a
" new line.
"i2

" Line-up with the next line with the previous one if there's an unclosed
" parentheses.
"(0

" Same as (N, but for one level deeper.
"us

set cino=N-sLs:2g0i2(0us
