return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async", -- Required dependency
  },
  event = "VeryLazy",
  opts = {
    provider_selector = function(_, _, _)
      return { "lsp", "indent" } -- Use LSP and indent for folds
    end,
  },
  config = function(opts)
    require("ufo").setup(opts)
  end,
}
