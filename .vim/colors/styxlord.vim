" local syntax file - set colors on a per-machine basis:
" Vim color file

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "matthew"

" regular text
hi Normal guibg=Black guifg=#E0F0E0 gui=NONE ctermfg=LightGrey

" the cursor
hi Cursor guibg=White guifg=Black gui=NONE ctermfg=Black ctermbg=White

" non text
hi NonText guibg=Grey10 gui=NONE ctermfg=DarkGrey

" special text
hi Special guifg=#FF7FFF guibg=Black gui=NONE ctermfg=Magenta

" highlighted visual text
hi Visual guifg=Blue guibg=White gui=NONE ctermfg=Blue ctermbg=White

" search results
hi Search guibg=Green guifg=Black gui=NONE ctermfg=Black ctermbg=Green

" any comment
hi Comment guifg=#7F7F7F gui=NONE ctermfg=DarkGrey

hi Ignore guifg=bg gui=NONE
hi Error guibg=#FF0000 guifg=#000000 gui=NONE ctermfg=Black ctermbg=Red
hi Todo guibg=#FFFF00 guifg=#000000 gui=NONE ctermfg=Black ctermbg=Yellow

" constant
hi Constant guifg=#7FFF7F gui=NONE ctermfg=LightGreen
hi Identifier	guifg=#FFDF1F gui=NONE ctermfg=Yellow
hi PreProc guifg=#FF7FFF gui=NONE ctermfg=Magenta
hi Statement guifg=#FFFF1F gui=NONE ctermfg=Yellow
hi Type guifg=#00FFFF gui=NONE ctermfg=Cyan
hi Operator guifg=#FF3F3F gui=NONE ctermfg=Yellow

