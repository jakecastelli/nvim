local options = {
  background = 'dark',
  backup = false,
  encoding = 'utf-8',
  hidden = true,
  mouse = "a",
  number = true,
  pumheight = 10,                          -- pop up menu height
  relativenumber = true,
  scrolloff = 8,                           -- always keep 8 lines to the bottom
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  updatetime = 300,                        -- faster completion (4000ms default)
}

vim.opt.shortmess:append 'c'

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- use % to jump between pairs
vim.cmd "set matchpairs+=<:>"
