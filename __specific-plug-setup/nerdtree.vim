" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <Leader>b :NERDTreeToggle<CR>
nmap <Leader>f :call NerdTreeOpenCurrentFileImprovement()<CR>

function! NerdTreeOpenCurrentFileImprovement()
  if exists("g:NERDTree") && g:NERDTree.IsOpen()
    execute "normal! :NERDTreeClose\<CR>"
  else
    execute "normal! :NERDTreeFind\<CR>"
  endif
endfunction


" Automaticaly close nvim if NERDTree is only thing left open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
