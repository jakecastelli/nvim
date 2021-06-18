" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
" Which key
Plug 'liuchengxu/vim-which-key'
" Color Scheme
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'cocopon/iceberg.vim'
Plug 'herrbischoff/cobalt2.vim'
" Color Scheme
" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
" Fizzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" CoC LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
" Deal with Comments
Plug 'tpope/vim-commentary'
" Emmet
Plug 'mattn/emmet-vim'
" Make sure to grab nerd font, before using devicons
" Plug 'ryanoasis/vim-devicons'
" floating terminal
Plug 'voldikss/vim-floaterm'
" Multi-cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" React JSX TSX
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
" Styled Component
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }
call plug#end()
