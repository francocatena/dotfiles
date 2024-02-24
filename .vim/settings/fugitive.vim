nnoremap dgs :Git<CR>
nnoremap dgd :Gdiff<CR>
nnoremap dgc :Gcommit<CR>
nnoremap dgb :Git blame<CR>
nnoremap dgl :Glog<CR>
nnoremap dgl :Glog<CR>

nnoremap dgp :Dispatch git push<CR>

if has('autocmd')
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
