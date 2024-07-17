local options = {
  -- Sync vim and system clipboard
  clipboard = "unnamedplus",

  -- Define how splits should be opened
  splitbelow = true,
  splitright = true,

  wrap = false,

  -- Minimum number of spaces as each screen boundary
  scrolloff = 8,
  sidescrolloff = 8,

  -- Save undo history
  undofile = true,

  foldenable = true,
  foldlevel = 99,
  foldlevelstart = 99,
  foldcolumn = '0',
  signcolumn = 'yes',
  diffopt = 'foldcolumn:0,filler,context:8',
  fillchars = 'diff: ',
  shiftwidth = 4,
  tabstop = 4,

  ttimeoutlen = 0,
  nu = false,
  rnu = false,
  expandtab = true,
  termguicolors = true,
  cindent = true,
  autoindent = false,
  smartindent = false,

  -- Display cursor line for current line
  cursorline = true,

  -- Ignore case in searches except in cases where there are upper case characters in the search term
  ignorecase = true,
  smartcase = true,

  fillchars = 'eob: ',
  cmdheight = 0,

  -- Split window with with list of all changes when performing replace command
  inccommand = "split",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Color Scheme
vim.cmd("colorscheme riri")
