return {
  { -- comment
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.basics").setup({
        options = {
          extra_ui = true,
          win_borders = 'double',
        },
        mappings = {
          windows = true,
          move_with_alt = true,
        }
      })

      require("mini.comment").setup() -- used for the absolute greatness of being able to comment quickly
      require("mini.pairs").setup()   -- used to quickly add pairs for Characters
      require("mini.surround").setup() -- used to surround text
      require("mini.align").setup()   -- better tabular
      require("mini.splitjoin").setup() -- Good for the J which merges two lines together
      require("mini.cursorword").setup() -- Used to show identical words
      require("mini.ai").setup()      -- better text objects such as vit ( visual in tag )
    end,
  },
}
