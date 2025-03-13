return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-cmdline",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				completion = {
					autocomplete = {
						cmp.TriggerEvent.TextChanged, -- Automatically show suggestions
						cmp.TriggerEvent.InsertEnter, -- Automatically on insert mode
					},
				},
				cmp.setup.cmdline(":", {
					sources = cmp.config.sources({
						{ name = "cmdline" },
						{ name = "path" },
					}, {
						{ name = "buffer" },
					}),
				}),
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For LuaSnip support
				}, {
					{ name = "buffer" }, -- For buffer-based completion
				}),
			})
		end,
	},
}
