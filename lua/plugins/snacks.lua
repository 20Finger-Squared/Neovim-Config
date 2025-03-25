return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile   = { enabled = true },
		notifier  = { enabled = true },
		indent    = { enabled = true },
		scope     = { enabled = true },

		dashboard    = { enabled = false },
		picker       = { enabled = false },
		explorer     = { enabled = false },
		input        = { enabled = false },
		quickfile    = { enabled = false },
		scroll       = { enabled = false },
		statuscolumn = { enabled = false },
		words        = { enabled = false },
	},
}
