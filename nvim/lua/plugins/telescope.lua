return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local actions = require('telescope.actions')
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<Esc>"] = actions.close,
            ["<A-e>"] = actions.move_selection_next,     -- move file selection down
            ["<A-i>"] = actions.move_selection_previous, -- move file selection up
          },
        },
        layout_config = {
          vertical = {
            height = 0.9,
            preview_cutoff = 40,
            prompt_position = "bottom",
            width = function(_, max_cols)
              local percentage = 0.86
              local max = 100
              return math.min(math.floor(percentage * max_cols), max)
            end
          },
        },
        preview = {
          treesitter = true,
        },
        layout_strategy = "vertical",
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        path_display = { "smart" },
        color_devicons = true,
        prompt_prefix = "  ",
        selection_caret = " ",
        get_status_text = function(self)
          local ww = #(self:get_multi_selection())
          local xx = (self.stats.processed or 0) - (self.stats.filtered or 0)
          local yy = self.stats.processed or 0
          if xx == 0 and yy == 0 then
            return ""
          end
          if ww == 0 then
            return string.format("%s / %s ", xx, yy)
          else
            return string.format("%s / %s / %s ", ww, xx, yy)
          end
        end,
      },
      pickers = {
        find_files = {
          hidden = false,
        },
        git_bcommits = {
          mappings = {
            i = {
              ["<Cr>"] = actions.select_vertical,
            }
          }
        }
      },
      extensions = {
        file_browser = {
          hidden = true,
          grouped = true,
          git_status = false,
          files = true,
          select_buffer = false,
          hijack_netrw = true,
          mappings = {
            ['i'] = {
              ['<A-n>'] = telescope.extensions.file_browser.actions.create,
              ['<A-d>'] = telescope.extensions.file_browser.actions.remove,
            }
          },
        },
      }
    })

    local browser = telescope.load_extension("file_browser")

    vim.keymap.set('n', '<leader>o', builtin.find_files, {})
    vim.keymap.set('n', '<leader>s', builtin.live_grep)

    -- File browser keybinds
    vim.keymap.set("n", "<leader>b", function()
      vim.cmd(":Telescope file_browser path=%:p:h select_buffer=false\n")
    end)

    -- Open file browser on startup if no args provided
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        local args_count = vim.fn.argv()
        if #args_count == 0 then
          vim.cmd(":Telescope file_browser path=%:p:h select_buffer=false\n")
        end
      end
    })
  end
}
