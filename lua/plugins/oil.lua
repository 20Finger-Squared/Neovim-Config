return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" }, 
	lazy = false,
	config = function()
		require("oil").setup({
      default_file_explorer         = true,
      skip_confirm_for_simple_edits = true,
      use_defualt_keymaps           = false,

		  view_options = { show_hidden = true },
      columns = {
        "icon",
        "size",
      },
		})
	end,
}
