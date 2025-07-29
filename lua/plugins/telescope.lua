return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim', -- Required for Telescope
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			-- You need to build this plugin.
			-- Use 'make' for Linux/macOS, or 'cmake' for Windows.
			-- The 'build' key in lazy.nvim ensures it's compiled on installation.
			build = 'make', -- For Linux/macOS
			-- build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release', -- For Windows
			config = function()
				-- Load the fzf extension for Telescope
				require('telescope').load_extension('fzf')
			end,
		},
	},
}
