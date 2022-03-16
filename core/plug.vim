" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')
" Which key
Plug 'liuchengxu/vim-which-key'
" Color Scheme
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'relastle/bluewery.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'cocopon/iceberg.vim'
" Plug 'herrbischoff/cobalt2.vim'
" Color Scheme
" AirLine
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
" File manager
Plug 'preservim/nerdtree'

" Fizzy finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Telscope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" CoC LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Nvim LSP
" Plug 'neovim/nvim-lspconfig'
" Auto pair
Plug 'jiangmiao/auto-pairs'
" Remove white space
Plug 'ntpeters/vim-better-whitespace'
" Deal with Comments
Plug 'tpope/vim-commentary'
" Emmet
Plug 'mattn/emmet-vim'
" floating terminal
Plug 'voldikss/vim-floaterm'
" Multi-cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" React JSX TSX
" Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
" Styled Component
" Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }
" Css Colour preview
Plug 'ap/vim-css-color'
" Vim Starter
Plug 'mhinz/vim-startify'
" Show git symbol on the lines
Plug 'mhinz/vim-signify'
" Vim wiki
Plug 'vimwiki/vimwiki'

" Smooth scrolling
" Plug 'yuttie/comfortable-motion.vim'
" Plug 'psliwka/vim-smoothie'
Plug 'karb94/neoscroll.nvim'

" git message
Plug 'rhysd/git-messenger.vim'
" vim fugitive
Plug 'tpope/vim-fugitive'
" Make sure to grab nerd font, before using devicons
" icon
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" snippets engine
Plug 'SirVer/ultisnips'
call plug#end()
