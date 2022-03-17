vim.cmd('set nocompatible')
vim.cmd('filetype off')

require "user.options"
require "user.plugins"
require "user.treesitter"
require "user.cmp"
require "user.lsp"
require "user.impatient"
require "user.neoscroll"

-- vim.cmd('source ~/.config/nvim/core/plug.vim')
-- legacy general config
vim.cmd('source ~/.config/nvim/core/general.vim')
-- legacy plugin config
vim.cmd('source ~/.config/nvim/core/plugconf.vim')
