return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          border = {
            style = 'single',
          }
        },
        hover = {
          border = {
            padding = { 0, 0 },
            style = 'single',
          },
          position = {
            row = 2,
            col = 0,
          },
          size = {
            max_width = 80,
          },
          relative = 'cursor',
        },
      },
      presets = {
        bottom_search = true,     -- use a classic bottom cmdline for search
        command_palette = true,   -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,       -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true,    -- add a border to hover docs and signature help
      },
    })
  end
}
