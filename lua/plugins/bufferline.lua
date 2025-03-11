return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
        separator_style = "thick",
        buffer_padding = 0,
        show_buffer_numbers = true,
				offsets = {
					{ -- Buffer so that tabs don't appear above neotree
						filetype = "neo-tree",
						text = "Neotree",
						highlight = "Directory",
						separator = true,
						text_align = "center",
					},
				},
			},
		})
	end,
}
