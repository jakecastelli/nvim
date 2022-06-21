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

-- Visual Block --
-- Move text up and down
keymap('x', 'J', ":move '>+1<CR>gv-gv", opts)
keymap('x', 'K', ":move '<-2<CR>gv-gv", opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Move tabs left/right
keymap('n', '<A-left>', ':-tabmove<cr>', opts)
keymap('n', '<A-Right>', ':+tabmove<cr>', opts)

-- Tabs
keymap('n', '<leader>n', ':tabnext<CR>', opts)
keymap('n', '<leader>p', ':tabp<CR>', opts)

-- Close and remove the current window from the buffer
-- keymap('n', '<leader>q', ':q<CR>', opts)

-- Save
keymap('n', '<leader>w', ':w<CR>', opts)
-- Quit
keymap('n', '<leader><S>q', ':q<CR>', opts)

-- Resize window
keymap('n', '<leader>=', ':resize +5<CR>', opts)
keymap('n', '<leader>-', ':resize -5<CR>', opts)
keymap('n', '<leader>.', ':vertical resize +5<CR>', opts)
keymap('n', '<leader>,', ':vertical resize -5<CR>', opts)

-----------------------------
-- Key maps for using plugins
-----------------------------

-- Format
keymap('n', '<leader>s', ':Format<CR>', opts)

-- Telescope
keymap('n', '<C-p>', ':Telescope find_files<cr>', opts)
keymap('n', '<C-_>', ':Telescope current_buffer_fuzzy_find<cr>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<cr>', opts)
keymap('n', '<leader><leader>', ':Telescope buffers<cr>', opts)

-- Automatically remove trailing whitespace
keymap('n', '<leader>y', ':StripWhitespace<CR>', opts)

-- Diagnostic
keymap('n', '<leader>en', ':lua vim.diagnostic.goto_next()<CR>', opts)
keymap('n', '<leader>ep', ':lua vim.diagnostic.goto_prev()<CR>', opts)

-- translation
keymap('n', '<leader>t', ':TranslateW<cr>', opts)
keymap('v', '<leader>t', ':TranslateW<cr>', opts)

-- Copy to system clipboard
keymap('n', '<leader>c', '"*y', opts)
keymap('v', '<leader>c', '"*y', opts)

-- Open projects
keymap('n', '<leader>p', "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)

-- DAP
keymap('n', '<leader>db', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap('n', '<leader>dc', "<cmd>lua require'dap'.continue()<cr>", opts)
keymap('n', '<leader>di', "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap('n', '<leader>do', "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap('n', '<leader>dO', "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap('n', '<leader>dr', "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap('n', '<leader>dl', "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap('n', '<leader>du', "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap('n', '<leader>dt', "<cmd>lua require'dap'.terminate()<cr>", opts)
