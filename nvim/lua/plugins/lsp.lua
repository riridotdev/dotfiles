return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local lspconfig = require("lspconfig")

    -- Configure LSP servers
    lspconfig.lua_ls.setup({})
    lspconfig.gopls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.tsserver.setup({})
    lspconfig.terraformls.setup({})

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
      end
    })

    -- Diagnostic settings
    vim.diagnostic.config({
      signs = false,
      virtual_text = true,
      underline = false,
      float = {
        border = "single",
        header = "",
      },
    })

    -- Keymap
    vim.keymap.set({ 'n', 'x' }, '<leader>l', function()
      vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
    vim.keymap.set('n', '<leader>m', vim.diagnostic.setqflist)
    vim.keymap.set('n', '<leader>i', vim.lsp.buf.hover)
    vim.keymap.set('n', '<C-Space>', vim.lsp.buf.code_action)
    vim.keymap.set('n', '<leader>c', vim.lsp.buf.definition)
    vim.keymap.set('n', '<leader>y', vim.lsp.buf.references)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)
    vim.keymap.set('n', 'm', vim.diagnostic.goto_next)
    vim.keymap.set('n', 'M', vim.diagnostic.goto_prev)
  end
}
