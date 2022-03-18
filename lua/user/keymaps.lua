local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Window navigation
keymap('n', '<leader>h', '<C-w>h', opts)
keymap('n', '<leader>j', '<C-w>j', opts)
keymap('n', '<leader>k', '<C-w>k', opts)
keymap('n', '<leader>l', '<C-w>l', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Automatically remove trailing whitespace
keymap('n', '<leader>y', ':StripWhitespace<CR>', opts)

-- Close and remove the current window from the buffer
-- keymap('n', '<leader>q', ':q<CR>', opts)

-- Resize window
keymap('n', '<leader>=', ':resize +5<CR>', opts)
keymap('n', '<leader>-', ':resize -5<CR>', opts)
keymap('n', '<leader>.', ':vertical resize +5<CR>', opts)
keymap('n', '<leader>,', ':vertical resize -5<CR>', opts)

-- Format
keymap('n', '<leader>s', ':Format<CR>', opts)
-- Save
keymap('n', '<leader>w', ':w<CR>', opts)

-- Diagnostic
keymap('n', '<leader>en', ':lua vim.diagnostic.goto_next()<CR>', opts)
keymap('n', '<leader>ep', ':lua vim.diagnostic.goto_prev()<CR>', opts)

-- Visual Block --
-- Move text up and down
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Move tabs left/right
keymap('n', '<A-left>', ':-tabmove<cr>', opts)
keymap('n', '<A-Right>', ':+tabmove<cr>', opts)
