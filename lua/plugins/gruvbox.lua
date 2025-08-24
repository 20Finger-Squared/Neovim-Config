return {
  "ellisonleao/gruvbox.nvim",
  lazy = false, -- load immediately
  priority = 1000, -- make sure colorscheme loads first
  config = function()
    vim.cmd("colorscheme gruvbox")
  end
}

