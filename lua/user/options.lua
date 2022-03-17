local options = {
  background = 'dark',
  backup = false,
  completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
  encoding = 'utf-8',
  hidden = true,
  mouse = 'a',
  number = true,
  relativenumber = true,
  scrolloff = 8, -- always keep 8 lines to the bottom
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  signcolumn = 'yes', -- always show the sign column, otherwise it would shift the text each time
  smartcase = true, -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  updatetime = 300, -- faster completion (4000ms default)
}

vim.opt.shortmess:append 'c'

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- use % to jump between pairs
vim.cmd 'set matchpairs+=<:>'
