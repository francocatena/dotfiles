" No arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Disable K looking stuff up
map K <Nop>

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" Quit, save and _only_ shortcuts
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>a :wa<CR>
nnoremap <Leader>o :only<CR>

" Aesthetic and navigation
nnoremap <Leader><Leader> :nohlsearch<CR>
nnoremap <Leader><CR> o<Esc>
nnoremap <Leader>b <C-^>

" Tab shortcuts
nnoremap <C-t> :tabnew<CR>
nnoremap <S-h> gT
nnoremap <S-l> gt

" Shortcuts for opening file in same directory as current file
cnoremap <expr> %% getcmdtype() == ':' ? escape(expand('%:h'), ' \').'/' : '%%'

map <Leader>ew :edit %%
map <Leader>es :split %%
map <Leader>ev :vsplit %%
map <Leader>et :tabedit %%

" CTags shorcuts
nnoremap <Right> <C-]>

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" Navigate through quickfix
map <F3> :cprev<CR>
map <F4> :cnext<CR>
