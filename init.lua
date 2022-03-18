vim.cmd 'set nocompatible'
vim.cmd 'filetype off'

require 'user.options'
require 'user.keymaps'
require 'user.plugins'
require 'user.treesitter'
require 'user.cmp'
require 'user.lsp'
require 'user.impatient'
require 'user.scroll'

-- vim.cmd('source ~/.config/nvim/core/plug.vim')
-- legacy general config
vim.cmd 'source ~/.config/nvim/core/general.vim'
-- legacy plugin config
vim.cmd 'source ~/.config/nvim/core/plugconf.vim'
