" === Nerdtree shorcuts === "    
"  <leader>n - Toggle NERDTree on/off    
"  <leader>f - Opens current file location in NERDTree    
map <C-b> :NERDTreeToggle<CR>    
nmap <leader>f :NERDTreeFind<CR>    
     
" === coc.nvim === "    
"   <leader>dd    - Jump to definition of current symbol    
"   <leader>dr    - Jump to references of current symbol    
"   <leader>dj    - Jump to implementation of current symbol    
"   <leader>ds    - Fuzzy search current project symbols    
nmap <silent> gd <Plug>(coc-definition)    
nmap <silent> gr <Plug>(coc-references)    
nmap <silent> <leader>dj <Plug>(coc-implementation)  
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>
