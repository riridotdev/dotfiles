local defaultLanguages = {
  "bash",
  "c",
  "c_sharp",
  "cpp",
  "css",
  "csv",
  "dockerfile",
  "fish",
  "git_config",
  "git_rebase",
  "gitcommit",
  "go",
  "gomod",
  "gosum",
  "html",
  "javascript",
  "json",
  "lua",
  "make",
  "markdown",
  "passwd",
  "python",
  "sql",
  "terraform",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "xml",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "VeryLazy" },
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      sync_install = false,
      auto_install = true,
      ensure_installed = defaultLanguages,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end
}
