return {
	"rmagatti/auto-session",
	lazy = false,

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/Projects", "~/Downloads", "/" },
		enabled = true, -- Enables/disables auto creating, saving and restoring
		root_dir = vim.fn.stdpath("data") .. "/sessions/", -- Root dir where sessions will be stored
		auto_save = true, -- Enables/disables auto saving session on exit
		auto_restore = true, -- Enables/disables auto restoring session on start
		auto_create = true, -- Enables/disables auto creating new session files. Can take a function that should return true/false if a new session file should be created or not
		auto_restore_last_session = true, -- On startup, loads the last saved session if session for cwd does not exist
		use_git_branch = false, -- Include git branch name in session name
		lazy_support = true, -- Automatically detect if Lazy.nvim is being used and wait until Lazy is done to make sure session is restored correctly. Does nothing if Lazy isn't being used. Can be disabled if a problem is suspected or for debugging

		log_level = "error",
		bypass_session_save_file_types = { "nofile", "terminal", "prompt" },
		pre_save_cmds = { "set nofoldenable" },

		session_lens = {
			load_on_setup = true, -- Initialize on startup (requires Telescope)
			theme_conf = { -- Pass through for Telescope theme options
				layout_config = { -- As one example, can change width/height of picker
					width = 0.8, -- percent of window
					height = 0.5,
				},
			},
		},
	},
}
