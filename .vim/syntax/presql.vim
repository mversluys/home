" Vim syntax file
" Language:	PreSQL (mysql before it goes through a C pre-processor)

" Start with mysql syntax
runtime! syntax/mysql.vim
unlet b:current_syntax

" Highlight C++ comments appropriately
syn region    cCommentL       start="//" skip="\\$" end="$" keepend contains=@Spell        
hi def link cCommentL Comment

let b:current_syntax = "presql"

