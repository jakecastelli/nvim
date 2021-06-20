set bg=dark
set updatetime=50

" This can solve flicker issue - TODO: check if NVIM v0.5+ fixed it
au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=10

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
set cursorline

set ssop-=curdir
"set backspace=indent,eol,start
"enable 24bit true colour
set termguicolors

" Enable spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open vimrc Config
command! Config execute ":e $MYVIMRC"
" Reload vimrc
command! Reload execute "source ~/.config/nvim/init.vim"

" Random colourscheme selection everytime open vim
function! RandomScheme()
  let choices = ['gruvbox', 'onehalfdark', 'iceberg', 'cobalt2']
  let index = RandomNumber(len(choices))
  execute 'colorscheme' choices[index]
endfunction

function! RandomNumber(limit)
  let components = split(reltimestr(reltime()), '\.')
  let microseconds = components[-1] + 0
  return microseconds % a:limit
endfunction

call RandomScheme()
