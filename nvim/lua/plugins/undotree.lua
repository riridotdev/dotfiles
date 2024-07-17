return {
  "mbbill/undotree",
  config = function()
    local opts = {
      ShortIndicators = 0,
      SetFocusWhenToggle = 0,
      DiffAutoOpen = 0,
      HighlightChangedWithSign = 0,
      HighlightChangedText = 1,
      HelpLine = 0,
      CursorLine = 0,
    }

    for key, val in pairs(opts) do
      vim.g['undotree_' .. key] = val
    end

    vim.keymap.set('n', '<leader>u', function()
      vim.cmd.UndotreeToggle()
      vim.cmd.UndotreeFocus()
    end)
    vim.keymap.set('n', '<Esc>', vim.cmd.UndotreeHide)
  end
}
