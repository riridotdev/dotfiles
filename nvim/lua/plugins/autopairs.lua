return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local nvimpairs = require("nvim-autopairs")
    local rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")

    nvimpairs.setup({})

    nvimpairs.add_rules({
      rule("<", ">")
          :with_pair(cond.not_before_regex(" "))
    })

    local brackets = {
      { '(', ')' },
      { '[', ']', },
      { '{', '}', },
    }

    nvimpairs.add_rules({
      rule(" ", " ")
          :with_pair(function(opts)
            local pair = opts.line:sub(opts.col - 1, opts.col)
            return vim.tbl_contains({
              brackets[1][1] .. brackets[1][2],
              brackets[2][1] .. brackets[2][2],
              brackets[3][1] .. brackets[3][2],
            }, pair)
          end)
    })

    for _, bracket in pairs(brackets) do
      nvimpairs.add_rules({
        rule(bracket[1] .. ' ', ' ' .. bracket[2])
            :with_pair(function() return false end)
            :with_move(function(opts)
              return opts.prev_char:match('.%' .. bracket[2]) ~= nil
            end)
            :use_key(bracket[2])
      })
    end
  end
}
