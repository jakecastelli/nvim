vim.cmd('set nocompatible')
vim.cmd('filetype off')

require "user.options"
require "user.plugins"
require "user.treesitter"

-- vim.cmd('source ~/.config/nvim/core/plug.vim')
vim.cmd('source ~/.config/nvim/core/general.vim')
vim.cmd('source ~/.config/nvim/core/plugconf.vim')
