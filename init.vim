set nocompatible
filetype off

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:mapleader=","
colorscheme gruvbox
set bg=dark

" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
map <C-b> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
" Encoding
set encoding=utf-8

"basic
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
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" === coc.nvim === "
"   <leader>dd    - Jump to definition of current symbol
"   <leader>dr    - Jump to references of current symbol
"   <leader>dj    - Jump to implementation of current symbol
"   <leader>ds    - Fuzzy search current project symbols
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" Enable spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell
