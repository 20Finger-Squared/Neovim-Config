return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependancies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = 'vertical',
        layout_config = {
          width =  0.7,
        },
      }
    })
  end
}
