local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local actions = require 'telescope.actions'
telescope.setup {
  defaults = {
    mappings = {
      i = {
        -- send selected items to quickfix
        ['<C-w>'] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        -- send selected items to quickfix
        ['<C-w>'] = actions.send_selected_to_qflist + actions.open_qflist,
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
          ['<c-k>'] = require('telescope.actions').delete_buffer,
          -- Right hand side can also be the name of the action as a string
        },
        n = {
          ['<c-k>'] = require('telescope.actions').delete_buffer,
        },
      },
    },
  },
  extensions = {
    -- Your extension config goes in here
  },
}
