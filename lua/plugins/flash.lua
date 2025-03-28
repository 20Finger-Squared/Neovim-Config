return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config

  opts = {
    jump      = { autojump = true },
    highlight = {},
    label     = { rainbow = { enabled = true, shade = 5 } },
    search    = {},
    ---@type table<string, Flash.Config>
    modes     = {
      -- options used when flash is activated through
      -- a regular search with `/` or `?`
      search = { enabled = true, highlight = { backdrop = true } },
      -- options used when flash is activated through
      -- `f`, `F`, `t`, `T`, `;` and `,` motions
      char = {
        enabled = true,
        jump_labels = true,
        highlight = { backdrop = false },
      },
    },
  },

  keys = {
    { "fj", mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
    { "tS", mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
    { "r",  mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
    { "R",  mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  },
}
