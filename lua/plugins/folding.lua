return {
	{
		"anuvyklack/fold-preview.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("fold-preview").setup()
		end,
	},
	{
		"anuvyklack/keymap-amend.nvim",
	},
}
