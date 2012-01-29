" not interested in vi compatibility
se nocompatible

" setting this is useful when editing on read only volumes
if has('unix')
  se dir=/tmp
else
  se dir=c:\windows\temp
end

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
if has('unix')
  se term=ansi
end

" use the "styxlord" color scheme
colo styxlord

" gui options
if has('gui')
  se go=
  se guifont=Lucida_Console:h10:cANSI
  if exists('&diff')
    se columns=200
  else
    se columns=120
  end
  se lines=60
end

" turn on syntax highlighting
syntax on

" set the make program to scons
" -u means it will search up from the current directory
" jobs=1 is specified to make builds consistent when fixing errors
se makeprg=scons\ -u\ jobs=1

" use tee to echo shell program output
if !has('unix')
  se shellpipe=2>&1\ \|\ tee
end

" setup grep to exclude subversion folders and act recursively
if has('unix')
  se grepprg=grep\ -Ir\ --exclude=\"*.svn*\"\ -n\ $*\ /dev/null     
else
  se grepprg=grep\ -Ir\ --exclude=\"*.svn*\"\ -n\ $*\ *
end

" turn on spell checking
se spell spelllang=en_us

" turn off line numbers by default
se nonumber

" set the color of line numbers
hi LineNr ctermfg=DarkBlue

" jump to the file mark when opening a file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


" Remove trailing whitespace from C++ source files and headers
au BufWritePre *.cpp :s/\s+$//e
au BufWritePre *.h :s/\s+$//e
