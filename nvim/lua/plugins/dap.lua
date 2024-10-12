return {
  "mfussenegger/nvim-dap",
  config = function()
    dap = require("dap")

    local debugger_conditional_toggle = function()
      vim.ui.input({ prompt = 'Condition: ' }, function(input)
        if input ~= nil and input ~= "" then
          dap.toggle_breakpoint(input)
        end
      end)
    end

    -- find better binds for these, they're conflicting with 'jump to definition'
    vim.keymap.set('', '<leader>dt', function() dap.toggle_breakpoint() end)
    vim.keymap.set('', '<leader>dct', debugger_conditional_toggle)
    vim.keymap.set('', '<leader>ds', function() dap.continue() end)
    vim.keymap.set('', '<leader>dr', function() dap.run_to_cursor() end)
    vim.keymap.set('n', '<C-e>', function() dap.step_over() end)
    vim.keymap.set('n', '<C-i>', function() dap.step_back() end)
    vim.keymap.set('n', '<C-o>', function() dap.step_into() end)
    vim.keymap.set('n', '<C-n>', function() dap.step_out() end)
    vim.keymap.set('n', '<leader>dcc', dap.focus_frame)
    vim.keymap.set('n', '<leader>dce', dap.up)
    vim.keymap.set('n', '<leader>dci', dap.down)
    vim.keymap.set('n', '<C-c>', function() dap.terminate() end)

    dap.adapters.lldb = {
      type = 'executable',
      command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- adjust as needed, must be absolute path
      name = 'lldb'
    }

    dap.configurations.c = {
      {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      },
    }

    dap.adapters.delve = {
      type = 'server',
      port = '${port}',
      executable = {
        command = 'dlv',
        args = { 'dap', '-l', '127.0.0.1:${port}' },
      }
    }

    -- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
    dap.configurations.go = {
      {
        type = "delve",
        name = "Debug",
        request = "launch",
        program = ".",
        --[[ program = "${file}" ]]
      },
      {
        type = "delve",
        name = "launch with arguments",
        request = "launch",
        program = ".",
        args = function()
          input = vim.fn.input('Arguments: ')
          local t = {}
          for str in string.gmatch(input, "%S+") do
            table.insert(t, str)
          end
          return t
        end,
      },
      {
        type = "delve",
        name = "Debug test", -- configuration for debugging test files
        request = "launch",
        mode = "test",
        program = "."
      },
      -- works with go.mod packages and sub packages
      {
        type = "delve",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
      },
    }
  end
}
