vim.cmd('set nocompatible')
vim.cmd('filetype off')

vim.cmd('source ~/.config/nvim/core/plug.vim')
-- " general settings
vim.cmd('source ~/.config/nvim/core/general.vim')
-- " plugin configuration
vim.cmd('source ~/.config/nvim/core/plugconf.vim')

require "user.options"
require "user.plugins"
