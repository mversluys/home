syntax on
se ts=2
se sw=2
se et
se cindent

se makeprg=scons\ -u\ --toolchain=clang\ --jobs=1

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
