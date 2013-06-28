set background=dark
set guifont=Monospace\ 14
silent! colorscheme solarized

" Do not use modal alert dialogs! (Prefer Vim style prompt.)
" http://stackoverflow.com/questions/4193654/using-vim-warning-style-in-gvim
set guioptions+=c
" Remove right-hand scroll bar"
set guioptions-=r
" Remove toolbar
set guioptions-=T

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y
