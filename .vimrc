set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#helptags()

set autoread

set history=10000
set pastetoggle=<C-p>

set ignorecase smartcase

let mapleader=','

set timeout
set timeoutlen=1000
set ttimeoutlen=100

runtime! settings/*
