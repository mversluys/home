" Vim syntax file
" Language:	BSN

syn keyword bsnIdentifier typedef const optional
syn keyword bsnStruct     module choice struct enum inum array end
syn keyword bsnType       null fourcc int string asciistring blob bitarray
syn keyword bsnUser       bool u8 u16 u32 u64 s8 s16 s32 s64
syn keyword bsnOperator   bit
syn region	bsnString		  start=+l\="+ skip=+\\\\\|\\"+ end=+"+
syn region	bsnCharacter  start=+l\='+ skip=+\\\\\|\\'+ end=+'+
syn match	  bsnNumber		  display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
syn match	  bsnNumbers    transparent "\<\d\|\.\d" contains=bsnNumber
syn match   bsnComment    "#.*" contains=@Spell
syn match   bsnError      "\<\(end\)\>"
syn region  bsnModuleBlock transparent matchgroup=bsnModule start="\<module\>" end="\<end\>" contains=ALLBUT,bsnModule
syn region  bsnChoiceBlock transparent matchgroup=bsnChoice start="\<choice\>" end="\<end\>" contains=ALL
syn region  bsnStructBlock transparent matchgroup=bsnChoice start="\<struct\>" end="\<end\>" contains=ALL
syn region  bsnEnumBlock transparent matchgroup=bsnEnum start="\<enum\>" end="\<end\>" contains=ALL

hi def link bsnIdentifier Identifier
hi def link bsnType Type
hi def link bsnUser Type
hi def link bsnStruct Structure
hi def link bsnString String
hi def link bsnCharacter String
hi def link bsnNumber Number
hi def link bsnComment Comment
hi def link bsnError Error
hi def link bsnModule Structure
hi def link bsnChoice Structure
hi def link bsnStruct Structure
hi def link bsnEnum Structure
hi def link bsnFlags Structure
hi def link bsnOperator Operator

let b:current_syntax = "bsn"

