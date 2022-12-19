local dap_status_ok, dap = pcall(require, 'dap')
if not dap_status_ok then
  return
end

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = { os.getenv 'HOME' .. '/projects/vscode-node-debug2/out/src/nodeDebug.js' },
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require('dap.utils').pick_process,
  },
}

dap.configurations.typescript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require('dap.utils').pick_process,
  },
}

local dap_ui_status_ok, dapui = pcall(require, 'dapui')
if not dap_ui_status_ok then
  return
end

local dap_install_status_ok, dap_install = pcall(require, 'dap-install')
if not dap_install_status_ok then
  return
end

-- dap_install.setup {}
-- dap_install.setup {
-- installation_path = vim.fn.stdpath 'data' .. '/dapinstall/',
-- installation_path = vim.fn.stdpath 'data' .. '/dapinstall/',
-- }

-- dap_install.config('python', {})
-- add other configs here
-- dap_install.config('jsnode', {})

dapui.setup {
  sidebar = {
    elements = {
      {
        id = 'scopes',
        size = 0.25, -- Can be float or integer > 1
      },
      { id = 'breakpoints', size = 0.25 },
    },
    size = 40,
    position = 'left', -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = {},
  },
}

vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DiagnosticSignError', linehl = '', numhl = '' })

dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end
