vim.cmd('set nocompatible')
vim.cmd('filetype off')

require "user.options"
require "user.plugins"

vim.cmd('source ~/.config/nvim/core/plugconf.vim')
vim.cmd('source ~/.config/nvim/core/general.vim')
