" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
" Color Scheme
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'cocopon/iceberg.vim'
" Color Scheme
" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
" Deal with Comments
Plug 'tpope/vim-commentary'
" Emmet
Plug 'mattn/emmet-vim'
" Make sure to grab nerd font, before using devicons
" Plug 'ryanoasis/vim-devicons'
call plug#end()
