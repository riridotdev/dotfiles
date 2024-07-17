return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        normal = 's',
        normal_cur = 'ss',
        delete = 'ds',
        change = 'cs',
        visual = 's',
      }
    })
  end
}
