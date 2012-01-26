" not interested in vi compatibility
se nocompatible

" setting this is useful when editing on read only volumes
se dir=/tmp

" command height
se ch=1

" highlight searches
se hlsearch

" perform searches incrementally (searches as you type after /)
se incsearch

" when closing brackets, highlight the opening bracket
se showmatch

" shift width
se sw=2

" tab stop
se ts=2

" tabs are expanded to spaces
se et

" show the ruler down the bottom (current column and row)
se ruler

" turn on c indenting
se cindent

" don't create backup files
se nobackup

" look for tags in this file
se tags=tags;/

" terminal is ansi
se term=ansi

" use the "styxlord" color scheme
colo styxlord

" gui options
se go=egmrLt

" turn on syntax highlighting
syntax on

" set the make program to scons
" -u means it will search up from the current directory
" jobs=1 is specified to make builds consistent when fixing errors
set makeprg=scons\ -u\ jobs=1

" setup grep to exclude subversion folders and act recursively
set grepprg=grep\ -Ir\ --exclude=\"*.svn*\"\ -n\ $*\ /dev/null     

" turn on spell checking 
set spell spelllang=en_us

" turn off line numbers by default
set nonumber

" set the color of line numbers
hi LineNr ctermfg=DarkBlue

" jump to the file mark when opening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" DirDiff configuration
let g:DirDiffExcludes=".svn"

" Remove trailing whitespace from C++ source files and headers
au BufWritePre *.cpp :s/\s+$//e
au BufWritePre *.h :s/\s+$//e
