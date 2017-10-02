if has('syntax')
  syntax on
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
endif

set t_Co=256
set background=dark
colorscheme solarized

set ruler
set cursorline

if exists('+relativenumber') && exists('+number')
  set relativenumber
  set number
end

" Do not show splash screen
set shortmess+=I

" Tab-completion in command-line mode
set wildmode=full
set wildmenu

" No break the lines nor the words
set wrap
set linebreak

set hlsearch
set incsearch
set showmatch
set hidden
set nofoldenable
set ttyfast

set showcmd

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Status line
set showtabline=2
set laststatus=2

set listchars=tab:▸\ ,eol:¬
