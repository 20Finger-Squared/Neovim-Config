return {
	{ -- comment
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.comment").setup()
			require("mini.pairs").setup()
			require("mini.splitjoin").setup()
			require("mini.sessions").setup({
				-- Configure session saving directory
				directory = vim.fn.stdpath("data") .. "/sessions",

				-- Automatically save sessions when quitting Neovim
				auto_save = true,

				-- Automatically load session when opening Neovim in the session directory
				auto_load = true,

				-- Define which session components to save/load
				components = { "buffers", "winlayout", "options" },

				-- Define session name format
				session_name = function()
					return string.format("session_%s.vim", os.date("%Y-%m-%d_%H-%M-%S"))
				end,
			})
			require("mini.basics").setup({
				{
					mappings = {
						windows = true,
						move_with_alt = true,
					},
				},
			})

			local ai = require("mini.ai")
			ai.setup({
				-- Custom mappings for `a` (around) and `i` (inside) objects
				custom_textobjects = {
					f = ai.gen_spec.function_call(),
					a = ai.gen_spec.argument(),
				},
				search_method = "cover_or_next", -- Smarter selection
				silent = true,
			})
		end,
	},
}
