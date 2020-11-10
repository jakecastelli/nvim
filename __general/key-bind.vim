" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>
" <leader> hljk For navigating between windows
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
" show all the buffers
nmap <leader><space> :buffers<CR>
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>. :vertical resize +5<CR>
nnoremap <leader>, :vertical resize -5<CR>
" close the current window
nnoremap <leader>q :q<CR>
" split screen
nnoremap <leader>s :sp<CR>
" vertical split screen
nnoremap <leader>vs :vs<CR>

" New Tab
nmap <leader>tt :tabnew<CR>
" Next Tab
noremap <leader>n :tabn<CR>
" Previous Tab
noremap <leader>p :tabp<CR>
" Close current Tab
noremap <leader>c :tabc<CR>
