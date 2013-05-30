set nocompatible

runtime bundle/vim-pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#helptags()

if has('syntax')
  syntax on
endif

if has('autocmd')
  filetype plugin indent on
  augroup vimrcEx
    autocmd!
    " Remember last position in file
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
  augroup END
endif

if has('multi_byte')
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
  set nobomb
endif

if has('mouse')
  set mouse=nv
endif

if has('spell')
  set spell
  set spelllang=en_us
  nnoremap _s :set spell!<CR>
endif

if !exists('g:fugitive_git_executable')
  let g:fugitive_git_executable='LC_ALL=en_US git'
endif

set t_Co=256
set background=dark
colorscheme solarized

set ruler
set relativenumber
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
set hidden
set ttyfast
set history=10000
set pastetoggle=<C-p>

" Maintain undo history between sessions
if exists('+undofile') && exists('+undodir')
  set undofile
  set undodir=~/.vim/undodir
endif

if exists('+writebackup')
  set nobackup
  set writebackup
endif

set directory=~/.vim/backup

set ignorecase smartcase

set showcmd

" Status line
set showtabline=2
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*fugitive#statusline')?fugitive#statusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

let mapleader=','

set timeout
set timeoutlen=1000
set ttimeoutlen=100

" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Quit, save and _only_ shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>a :wa<CR>
nnoremap <Leader>o :only<CR>

" Aesthetic and navigation
nnoremap <Leader>n :set relativenumber!<CR>
nnoremap <Leader><Leader> :nohlsearch<CR>
nnoremap <Leader><CR> o<Esc>
nnoremap <Leader>b <C-^>

" Insert before cursor
nnoremap _i hi

" Switch background
nnoremap _bl :set background=light<CR>
nnoremap _bd :set background=dark<CR>

" Switch colorscheme
nnoremap _c :colorscheme 

" Smart way to move between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Resize windows
nnoremap <C-_> <C-w>_

" Shortcuts for opening file in same directory as current file
cnoremap <expr> %%  getcmdtype() == ':' ? escape(expand('%:h'), ' \').'/' : '%%'

map <Leader>ew :edit %%
map <Leader>es :split %%
map <Leader>ev :vsplit %%
map <Leader>et :tabedit %%

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

" Navigate through quickfix
map <F3> :cprev<CR>
map <F4> :cnext<CR>

" Toggle tmux status bar
nnoremap _ts :silent !tmux set status<CR>
