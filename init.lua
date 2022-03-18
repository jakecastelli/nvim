require 'user.options'
require 'user.keymaps'
require 'user.plugins'
require 'user.treesitter'
require 'user.lualine'
require 'user.autopairs'
require 'user.cmp'
require 'user.lsp'
require 'user.impatient'
require 'user.scroll'

-- vim.cmd('source ~/.config/nvim/core/plug.vim')
-- legacy general config
vim.cmd 'source ~/.config/nvim/core/general.vim'
-- legacy plugin config
vim.cmd 'source ~/.config/nvim/core/plugconf.vim'
