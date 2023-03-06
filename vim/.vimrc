" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Load an indent file for the detected file type.
filetype indent on

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
