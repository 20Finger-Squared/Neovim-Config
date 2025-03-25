return {
  { -- comment
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.basics").setup({
        options = {
          extra_ui = true,
          win_borders = "double",
        },
        mappings = {
          windows = true,
          move_with_alt = true,
        },
      })

      require("mini.clue").setup({
        triggers = {
          -- Leader triggers
          { mode = 'n', keys = '<Leader>' },
          { mode = 'x', keys = '<Leader>' },
          -- Marks
          { mode = 'n', keys = "'" },
          { mode = 'n', keys = '`' },
          { mode = 'x', keys = "'" },
          { mode = 'x', keys = '`' },

          -- Registers
          { mode = 'n', keys = '"' },
          { mode = 'x', keys = '"' },
          { mode = 'i', keys = '<C-r>' },
          { mode = 'c', keys = '<C-r>' },
        },
        window = {
          delay = 0, -- Because why be slow?
          config = {
            border = "rounded",
            width = "auto",
          },
        },

        width = "auto",
        clues = {
          -- Enhance this by adding descriptions for <Leader> mapping groups
          require("mini.clue").gen_clues.builtin_completion(),
          require("mini.clue").gen_clues.g(),
          require("mini.clue").gen_clues.marks(),
          require("mini.clue").gen_clues.registers(),
          require("mini.clue").gen_clues.windows(),
          require("mini.clue").gen_clues.z(),
        },
      })
      require("mini.comment").setup()    -- used for the absolute greatness of being able to comment quickly
      require("mini.pairs").setup()      -- used to quickly add pairs for Characters
      require("mini.surround").setup()   -- used to surround text
      require("mini.align").setup()      -- better tabular
      require("mini.splitjoin").setup()  -- Good for the J which merges two lines together
      require("mini.cursorword").setup() -- Used to show identical words
      require("mini.ai").setup()         -- better text objects such as vit ( visual in tag )
    end,
  },
}
