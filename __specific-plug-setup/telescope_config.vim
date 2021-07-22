" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-_> <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader><Space> <cmd>Telescope buffers<cr>

lua << EOF
local actions = require('telescope.actions')
require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        -- send selected items to quickfix
        ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        -- send selected items to quickfix
        ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
  },
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
