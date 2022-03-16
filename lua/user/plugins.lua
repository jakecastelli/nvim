local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- Which key
  use 'liuchengxu/vim-which-key'
  -- Color Scheme
  use 'morhetz/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use 'itchyny/lightline.vim'
  use 'preservim/nerdtree'

  -- Deal with Comments
  use 'tpope/vim-commentary'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'neoclide/coc.nvim', branch = 'release'}
  use 'jiangmiao/auto-pairs'

  -- remove trailing space(s)
  use 'ntpeters/vim-better-whitespace'
  use 'voldikss/vim-floaterm'
  use {'mg979/vim-visual-multi', branch = 'master'}
  use 'mhinz/vim-signify'
  use 'karb94/neoscroll.nvim'
  -- git message
  use 'rhysd/git-messenger.vim'
  -- vim fugitive
  use 'tpope/vim-fugitive'
  -- Make sure to grab nerd font, before using devicons
  --
  -- icon
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
