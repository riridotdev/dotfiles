return {
  "phaazon/hop.nvim",
  config = function()
    local hop = require("hop")
    hop.setup({ keys = "arstneiodh" })
    vim.keymap.set("", "<leader>f", function()
      hop.hint_words({ current_line_only = false })
    end)
  end
}
