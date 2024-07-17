return {
  "lukas-reineke/indent-blankline.nvim",
  tag = "v2.20.8",
  config = function()
    require("indent_blankline").setup {
      show_current_context = true,
      show_current_context_start = false,
      --char = '▏',
      -- context_char = '▏',
      char = '│',
      context_char = '│',
    }
  end
}
