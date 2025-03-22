return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				mode                        = "buffers", -- set to "tabs" to only show tabpages instead
				numbers                     = "ordinal",
				themable                    = false,
				modified_icon               = "● ",
				left_trunc_marker           = " ",
				right_trunc_marker          = " ",
				max_name_length             = 30,
				max_prefix_length           = 20,
				truncate_names              = true,
				tab_size                    = 20,
				diagnostics                 = "nvim_lsp",
				diagnostics_update_on_event = true,
				color_icons                 = true,
				show_buffer_icons           = true,
				show_buffer_close_icons     = false,
				show_close_icon             = false,
				show_tab_indicators         = true,
				show_duplicate_prefix       = true,
				duplicates_across_groups    = true,
				persist_buffer_sort         = true,
				move_wraps_at_ends          = false,
				separator_style             = "slant", -- [focused and unfocused]. eg: { '|', '|' }
				enforce_regular_tabs        = true,
				always_show_bufferline      = true,
				auto_toggle_bufferline      = true,
				indicator                   = { style    = "underline" },
				pick                        = { alphabet = "abcdefghijklmopqrstuvwxyzABCDEFGHIJKLMOPQRSTUVWXYZ1234567890", },
				custom_areas = {
					right = function()
						local result = {}
						local seve = vim.diagnostic.severity
						local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
						local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
						local info = #vim.diagnostic.get(0, { severity = seve.INFO })
						local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

						if #error ~= 0 then
							table.insert(result, { text = "  " .. error, link = "DiagnosticError" })
						end

						if #warning ~= 0 then
							table.insert(result, { text = "  " .. warning, link = "DiagnosticWarn" })
						end

						if #hint ~= 0 then
							table.insert(result, { text = "  " .. hint, link = "DiagnosticHint" })
						end

						if #info ~= 0 then
							table.insert(result, { text = "  " .. info, link = "DiagnosticInfo" })
						end
						return result
					end,
				},
			},
		})
	end,
}
