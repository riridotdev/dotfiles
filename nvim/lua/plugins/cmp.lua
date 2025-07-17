return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
  },
  config = function()
    local cmp = require("cmp")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    local border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

    cmp.setup({
      preselect = cmp.PreselectMode.None,

      sources = cmp.config.sources({
        { name = "buffer", },
      }),

      window = {
        completion = cmp.config.window.bordered({
          border = border,
          winhighlight = "Normal:CustomCmpItemNormal",
          col_offset = -1,
        }),
        documentation = cmp.config.window.bordered({ border = border }),
      },

      formatting = {
        fields = { "abbr", "menu" },
      },

      mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<A-e>"] = cmp.mapping.select_next_item(),
        ["<A-i>"] = cmp.mapping.select_prev_item(),
      },
    })

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
}
