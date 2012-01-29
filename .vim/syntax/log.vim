" Vim syntax file
" Language:	Log

syn match       logFileLine     " - \S*(\d*)$"
syn match       logBegin        "^>.*$" contains=logFileLine
syn match       logFinish       "^<.*$" contains=logFileLine
syn match       logInfo         "^I.*$" contains=logFileLine
syn match       logDiag         "^D.*$" contains=logFileLine
syn match       logNote         "^N.*$" contains=logFileLine
syn match       logWarn         "^W.*$" contains=logFileLine
syn match       logFail         "^F.*$" contains=logFileLine
syn match       logError        "^E.*$" contains=logFileLine
syn match       logStop         "^S.*$" contains=logFileLine

hi logBegin     guifg=#00A0FF
hi logFinish    guifg=#00A0FF
hi logInfo      guifg=#A0A0A0
hi logDiag      guifg=#A0A0A0
hi logNote      guifg=#00FFA0
hi logWarn      guifg=#FFA000
hi logFail      guifg=#FF0000
hi logError     guifg=#FF0000
hi logStop      guifg=#FFFFFF guibg=#A00000
hi logFileLine  guifg=#404040

let b:current_syntax = "log"

se nospell

" vim: ts=8
