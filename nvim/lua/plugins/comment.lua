return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        block = '//',
      },
      opleader = {
        block = '/',
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end
}
