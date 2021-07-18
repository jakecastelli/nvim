" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader><Space> <cmd>Telescope buffers<cr>

lua << EOF
require("telescope").setup {
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      -- previewer = false,
      mappings = {
        i = {
          -- kill buffer
          ["<c-k>"] = require("telescope.actions").delete_buffer,
          -- Right hand side can also be the name of the action as a string
          ["<c-k>"] = "delete_buffer",
        },
        n = {
          ["<c-k>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
  },
  extensions = {
    -- Your extension config goes in here
  }
}
EOF
