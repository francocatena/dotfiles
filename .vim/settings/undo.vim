" Maintain undo history between sessions
if exists('+undofile') && exists('+undodir')
  set undofile
  set undodir=~/.vim/undodir
endif
