set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

if has('syntax')
  syntax on
endif

if has('autocmd')
  filetype plugin indent on
endif

if has('multi_byte')
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has('mouse')
  set mouse=nv
endif

set background=dark
colorscheme solarized
set t_Co=256
set number
set cursorline

" Tab behavior
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set hlsearch
set incsearch
set showmatch
set history=10000
set pastetoggle=<C-p>

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir

set ignorecase smartcase

set showcmd

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Status line
set showtabline=2
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*fugitive#statusline')?fugitive#statusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

let mapleader=','

" Key maps
nnoremap <Leader>n :set number!<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

nnoremap <Leader><Leader> :nohlsearch<CR>
nnoremap <Leader><CR> o<Esc>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Leader shortcuts for Vim Rails commands
nnoremap <Leader>m :Rmodel 
nnoremap <Leader>c :Rcontroller 
nnoremap <Leader>v :Rview 
nnoremap <Leader>h :Rhelper 
nnoremap <Leader>u :Runittest 
nnoremap <Leader>f :Rfunctionaltest 
nnoremap <Leader>i :Rintegrationtest 
nnoremap <Leader>r :Rake
nnoremap <Leader>t :Rake<CR>
nnoremap <Leader>a :A<CR>

" Leader shortcuts for Vim Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gp :Git push<CR>

" Invisibles characters setup
nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
