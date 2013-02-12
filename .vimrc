set nocompatible

execute pathogen#infect()

syntax on
filetype plugin indent on

set showtabline=2
set statusline=2
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch
set showmatch
set history=10000
set pastetoggle=<C-p>

set nonumber
set numberwidth=5
highlight LineNr term=bold cterm=bold ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set cursorline
highlight CursorLine cterm=bold ctermbg=DarkGrey

set ignorecase smartcase

set showcmd

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Status line
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Custom autocommands
autocmd User Rails Rnavcommand fabricator test/fabricators -suffix=_fabricator.rb -default=model()
autocmd User Rails Rnavcommand uploader app/uploaders -suffix=_uploader.rb -default=model()

let mapleader=','

" Key maps
nnoremap <C-l> :set number!<CR>
nnoremap <Leader>s :w<CR>

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel 
map <Leader>c :Rcontroller 
map <Leader>v :Rview 
map <Leader>u :Runittest 
map <Leader>f :Rfunctionaltest 
map <Leader>i :Rintegrationtest 
map <Leader>r :Rake
