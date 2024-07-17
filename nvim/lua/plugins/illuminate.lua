return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      providers = {
        'lsp',
        --[[ 'treesitter', ]]
      },
      delay = 0,
      under_cursor = true,
    })
  end
}
