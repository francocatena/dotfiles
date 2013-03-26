set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

if has('syntax')
  syntax on
endif

if has('autocmd')
  filetype plugin indent on
  " Remember last position in file
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
endif

if has('multi_byte')
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

if has('mouse')
  set mouse=nv
endif

if has('spell')
  set spell
  set spelllang=en_us
  nnoremap _s :set spell!<CR>
endif

set background=dark
colorscheme solarized
set t_Co=256
set number
set cursorline

" Tab-completion in command-line mode
set wildmode=full
set wildmenu

set autoread

set nrformats-=octal

" Tab behavior
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround

set hlsearch
set incsearch
set showmatch
set history=10000
set pastetoggle=<C-p>

" Maintain undo history between sessions
if exists('+undofile') && exists('+undodir')
  set undofile
  set undodir=~/.vim/undodir
end

set directory=~/.vim/backup

set ignorecase smartcase

set showcmd

" Status line
set showtabline=2
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*fugitive#statusline')?fugitive#statusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

let mapleader=','

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Key maps
nnoremap <Leader>n :set number!<CR>
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
nnoremap <Leader>j :Rjavascript 
nnoremap <Leader>s :Rstylesheet 
nnoremap <Leader>r :Rake
nnoremap <Leader>t :Rake<CR>
nnoremap _a :A<CR>
nnoremap _r :R<CR>

" Leader shortcuts for Vim Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>i :Rintegrationtest 

" Invisibles characters setup
nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$
