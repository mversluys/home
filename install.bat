@echo off
set HOME=%HOMEDRIVE%%HOMEPATH%

echo "Installing VIM configuration"
copy .vimrc %HOME%_vimrc
mkdir %HOME%vimfiles
xcopy /S /Q .vim %HOME%vimfiles
