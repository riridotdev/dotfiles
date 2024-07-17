return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      execution_message = {
        -- Disable save message
        message = function()
          return ""
        end,
      },
    })
  end
}
