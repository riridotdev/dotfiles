return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require('gitsigns').setup({
      signcolumn = true,
      numhl = true,
      linehl = false,
      word_diff = false,
      current_line_blame = false,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 1000,
      },
    })

    local gs = package.loaded.gitsigns

    local function visual_stage()
      local first_line = vim.fn.line('v')
      local last_line = vim.fn.getpos('.')[2]
      gs.stage_hunk({ first_line, last_line })
    end

    vim.keymap.set('n', '<leader>gb', function() gs.blame_line({ full = false }) end)
    vim.keymap.set('n', 'h', gs.next_hunk)
    vim.keymap.set('n', 'H', gs.prev_hunk)
    vim.keymap.set('n', '<leader>gr', gs.toggle_deleted)
    vim.keymap.set('n', '<leader>gi', gs.preview_hunk_inline)
    vim.keymap.set('n', '<leader>ghs', gs.stage_hunk)
    vim.keymap.set('n', '<leader>ghu', gs.undo_stage_hunk)
    vim.keymap.set('n', '<leader>ghr', gs.reset_hunk)
    vim.keymap.set('v', '<leader>ghs', visual_stage)
  end
}
