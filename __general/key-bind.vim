" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>

" <leader> hljk For navigating between windows
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

" show all the buffers
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>. :vertical resize +5<CR>
nnoremap <leader>, :vertical resize -5<CR>

" close the current window
nnoremap <leader>Q :q<CR>

" split screen
nnoremap <leader>s :sp<CR>
" vertical split screen
nnoremap <leader>vs :vs<CR>

" New Tab
nnoremap <leader>tt :tabnew<Space>
" Next Tab
nnoremap <leader>n :tabn<CR>
" Previous Tab
nnoremap <leader>p :tabp<CR>
" Close current Tab
" noremap <leader>c :tabc<CR>

" Save
nnoremap <leader>w :w<CR>
" Open Terminal on the right split and put cursor into terminal
" noremap <leader>tm :vs<CR> <bar> <C-w>l <bar> :term<CR> <bar> a
"
" Escape to normal mode from insert mode
inoremap jj <Esc>

"Move tabs left/right
nnoremap <A-Left>  :-tabmove<cr>
nnoremap <A-Right> :+tabmove<cr>

"VSCode alike move lines
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
