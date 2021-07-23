set bg=dark
set updatetime=300

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
let s:term = system("echo $TERM_PROGRAM")[:-2]
echo s:term
if s:term != "Apple_Terminal"
  set termguicolors
endif

" Enable mosule let's make our life easier
set mouse=a

" Enable spellcheck for markdown files
augroup vimrc_autocmd
   autocmd BufRead,BufNewFile *.md setlocal spell

  " stop inserting comments when press o
  autocmd BufRead,BufNewFile * set formatoptions-=o
augroup END
" ref: set formatoptions-=o

" Enable auto mkview and load view for fold
" reference: https://www.youtube.com/watch?v=pnc9_d1k5-4&list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI&index=26&ab_channel=TheFrugalComputerGuy
" augroup AutoSaveGroup
"   autocmd!
"   " view files are about 500 bytes
"   " bufleave but not bufwinleave captures closing 2nd tab
"   " nested is needed by bufwrite* (if triggered via other autocmd)
"   " BufHidden for compatibility with `set hidden`
"   autocmd BufWinLeave,BufLeave,BufWritePost,BufHidden,QuitPre ?* nested silent! mkview!
"   autocmd BufWinEnter ?* silent! loadview
" augroup end

" Open vimrc Config in a new tab and change the dir path
" of that buffer to ~/.config/nvim
command! Config execute "tabnew | lcd ~/.config/nvim | e $MYVIMRC"

" Reload vimrc
command! Reload execute "source ~/.config/nvim/init.vim"

" set background transparent
command! Transparent execute 'hi Normal guibg=NONE ctermbg=NONE'

" Random colourscheme selection everytime open vim
function! RandomScheme()
  " let choices = ['gruvbox', 'onehalfdark', 'iceberg', 'cobalt2']
  let choices = ['gruvbox', 'onehalfdark', 'bluewery', 'dracula']
  let index = RandomNumber(len(choices))
  execute 'colorscheme' choices[index]
endfunction

function! RandomNumber(limit)
  let components = split(reltimestr(reltime()), '\.')
  let microseconds = components[-1] + 0
  return microseconds % a:limit
endfunction

call RandomScheme()

" pipe rg result into quickfix
set grepprg=ag\ --vimgrep

function! Rg(...)
	return system(join([&grepprg] + [expandcmd(join(a:000, ' '))], ' -i '))
endfunction

command! -nargs=+ -complete=file_in_path -bar Rg  cgetexpr Rg(<f-args>)

cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'

augroup quickfix
	autocmd!
	autocmd QuickFixCmdPost cgetexpr cwindow
augroup END
