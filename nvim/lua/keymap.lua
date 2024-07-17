-- Leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Navigation
vim.keymap.set({ 'n', 'x' }, 'i', 'k')      -- Up
vim.keymap.set({ 'n', 'x', 'o' }, 'e', 'j') -- Down
vim.keymap.set({ 'n', 'x', 'o' }, 'n', 'h') -- Left
vim.keymap.set({ 'n', 'x', 'o' }, 'o', 'l') -- Right

vim.keymap.set('n', 'I', '<C-u>')           -- Page up
vim.keymap.set('n', 'E', '<C-d>')           -- Page down
vim.keymap.set('n', 'N', '<C-o>')           -- Previous location
vim.keymap.set('n', 'O', '<C-i>')           -- Next location

vim.keymap.set({ 'n', 'x', 'o' }, 'l', 'e') -- To end of word
vim.keymap.set({ 'n', 'x', 'o' }, 'k', 'b') -- Backwards word

vim.keymap.set('n', '<Tab>', '<C-^>')                         -- Go to most recent buffer

-- Lines
vim.keymap.set('n', '<', 'O') -- New line above
vim.keymap.set('n', ',', 'o') -- New line below

-- Modes
vim.keymap.set('n', 't', 'i') -- Insert
vim.keymap.set('n', 'T', 'I') -- Insert at beginning of line

-- Undo/Redo
vim.keymap.set('n', 'U', '<C-r>') -- Redo

-- Search
vim.keymap.set('n', '<leader>/', '/') -- Search
vim.keymap.set('n', '<C-e>', 'n')     -- Next result
vim.keymap.set('n', '<C-i>', 'N')     -- Previous result

---- Fix register overwrites when pasting, changing, and deleting
vim.keymap.set({ 'n', 'x' }, 'c', '"_c') -- Change word
vim.keymap.set({ 'n', 'x' }, 'C', '"_C') -- Change to end of line

-- Panes
vim.keymap.set('n', '<A-i>', '<C-w>k')       -- Select pane up
vim.keymap.set('n', '<A-e>', '<C-w>j')       -- Select pane down
vim.keymap.set('n', '<A-n>', '<C-w>h')       -- Select pane left
vim.keymap.set('n', '<A-o>', '<C-w>l')       -- Select pane right

vim.keymap.set('n', '<A-I>', '<C-w>s<C-w>k') -- Split pane up
vim.keymap.set('n', '<A-E>', '<C-w>s')       -- Split pane down
vim.keymap.set('n', '<A-N>', '<C-w>v<C-w>h') -- Split pane left
vim.keymap.set('n', '<A-O>', '<C-w>v')       -- Split pane right

local function closePane()
  local wins = vim.api.nvim_list_wins()
  if #wins > 1 then
    vim.cmd('wincmd c')
  else
    vim.cmd('qa!')
  end
end

vim.keymap.set('n', '<C-A-w>', closePane)           -- Close current pane
vim.keymap.set('n', '<Esc>', '<Cmd>nohlsearch<CR>') -- Cancel search
