vim.pack.add({
	{ -- multi tool
		src="git@github.com:echasnovski/mini.nvim.git",
		name="mini",
	},
	{ -- color scheme
		src="git@github.com:ellisonleao/gruvbox.nvim.git",
		name="gruvbox",
	},
	{ -- to gaze at the stars
		src="git@github.com:nvim-telescope/telescope.nvim.git",
		name="telescope",
	},
    {
        src="git@github.com:lewis6991/gitsigns.nvim.git",
        name="gitsigns",
    },
    { -- tree sitter
        src="git@github.com:nvim-treesitter/nvim-treesitter.git",
        name="treesitter",
    },
	{
		src="https://github.com/nvim-lua/plenary.nvim.git",
		name="plenary",
	}
})
