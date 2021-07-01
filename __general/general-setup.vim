set bg=dark
set updatetime=50

" This can solve flicker issue which terminal opening in nvim - TODO: check if NVIM v0.5+ fixed it
au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=10

" Encoding
set encoding=UTF-8

" show line number and relative line number
set nu
set rnu

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set hidden

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

" Enable auto mkview and load view for fold
" reference: https://www.youtube.com/watch?v=pnc9_d1k5-4&list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI&index=26&ab_channel=TheFrugalComputerGuy
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Open vimrc Config in a new tab and change the dir path
" of that buffer to ~/.config/nvim
command! Config execute "tabnew | lcd ~/.config/nvim | e $MYVIMRC"

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

" set background transparent
command! Transparent execute 'hi Normal guibg=NONE ctermbg=NONE'
