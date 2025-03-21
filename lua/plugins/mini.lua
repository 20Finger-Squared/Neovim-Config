return {
	{ -- comment
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.misc").setup()
			require("mini.comment").setup()
			require("mini.pairs").setup()
			require("mini.surround").setup()
			require("mini.align").setup()
			require("mini.splitjoin").setup()
      require('mini.clue').setup()
			require("mini.cursorword").setup()
			require("mini.ai").setup()
			require("mini.basics").setup()
		end,
	},
}
