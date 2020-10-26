let g:mapleader="\<Space>"
set bg=dark
set updatetime=300

" Encoding
set encoding=UTF-8

"basic
set nu
set rnu

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=8
set matchpairs+=<:> " use % to jump between pairs
"set backspace=indent,eol,start

" Enable spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>
" <leader> hljk For navigating between windows
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

" New Tab
nmap <leader>tt :tabnew<CR>
" Next Tab
noremap <leader>n :tabn<CR>
" Previous Tab
noremap <leader>p :tabp<CR>
" Close current Tab
noremap <leader>c :tabc<CR>

" Random colourscheme selection
function! RandomScheme()
  let choices = ['gruvbox', 'onehalfdark', 'iceberg' ]
  let index = RandomNumber(len(choices))
  execute 'colorscheme' choices[index]
endfunction

function! RandomNumber(limit)
  let components = split(reltimestr(reltime()), '\.')
  let microseconds = components[-1] + 0
  return microseconds % a:limit
endfunction

call RandomScheme()
