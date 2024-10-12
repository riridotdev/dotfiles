return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  config = function()
    dap = require("dap")
    dapui = require("dapui")

    dapui.setup({
      controls = {
        element = "repl",
        enabled = false,
      },
      element_mappings = {
        scopes = {
          expand = "<CR>",
          edit = "t"
        },
        stacks = {
          open = "<CR>",
        },
        breakpoints = {
          open = "<CR>",
          toggle = "t",
          remove = "d",
        },
        watches = {
          open = "<CR>",
          remove = "d",
          edit = "t",
        }
      },
      layouts = { {
        elements = { {
          id = "scopes",
          size = 0.33
        }, {
          id = "stacks",
          size = 0.33
        }, {
          id = "watches",
          size = 0.33
        } },
        position = "left",
        size = 40
      }, {
        elements = { {
          id = "repl",
          size = 0.5
        }, {
          id = "console",
          size = 0.5
        } },
        position = "bottom",
        size = 10
      } },
      mappings = {
        edit = "<NA>",
        expand = "<CR>",
        open = "<NA>",
        remove = "<NA>",
        repl = "<NA>",
        toggle = "<NA>"
      },
    })

    vim.keymap.set('', '<leader>da', function() dapui.elements.watches.add() end)
    vim.keymap.set('', '<leader>dco', function() dapui.float_element("stacks", { enter = true }) end)
    vim.keymap.set('', '<leader>db', function() dapui.float_element("breakpoints", { enter = true }) end)
    vim.keymap.set('', '<leader>de', function() dapui.float_element("repl", { enter = true }) end)
    vim.keymap.set('n', '<leader>di', function() dapui.eval({ enter = true }) end)
    vim.keymap.set('', '<leader>do', function() dapui.toggle() end)

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
  end
}
