let g:fugitive_git_executable = 'LANG=en_US.UTF8 git'

nnoremap dgs :Gstatus<CR>
nnoremap dgd :Gdiff<CR>
nnoremap dgc :Gcommit<CR>
nnoremap dgb :Gblame<CR>
nnoremap dgl :Glog<CR>
nnoremap dgl :Glog<CR>

nnoremap dgp :Dispatch git push<CR>

if has('autocmd')
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
