return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp = require("cmp")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    local border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

    cmp.setup({
      preselect = cmp.PreselectMode.None,

      sources = cmp.config.sources({
        { name = "nvim_lsp", },
      }),

      window = {
        completion = cmp.config.window.bordered({
          border = border,
          winhighlight = "Normal:CustomCmpItemNormal",
          col_offset = -4,
        }),
        documentation = cmp.config.window.bordered({ border = border }),
      },

      formatting = {
        fields = { "kind", "abbr", "menu" },
      },

      mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<A-e>"] = cmp.mapping.select_next_item(),
        ["<A-i>"] = cmp.mapping.select_prev_item(),
      },
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
