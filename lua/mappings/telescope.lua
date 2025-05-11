local set       = vim.keymap.set
local builtin   = require("telescope.builtin")
local extension = require("telescope").extensions

-- built-in pickers
set("n", "<leader>ff", builtin.find_files,  { desc = "󰈞 Find files"   })
set("n", "<leader>fg", builtin.live_grep,   { desc = "󰱼 Grep project" })
set("n", "<leader>fo", builtin.oldfiles,    { desc = "󰄉 Recent files" })

set("n", "<leader>th", builtin.colorscheme,         { desc = "󰌗 Pick colorscheme"})
set("n", "<leader>tm", builtin.marks,               { desc = " Vim marks"       })
set("n", "<leader>tr", builtin.registers,           { desc = " Registers"       })
set("n", "<leader>tb", builtin.buffers,             { desc = " Buffers"         })
set("n", "<leader>tf", extension.frecency.frecency, { desc = "󰉋 Frecency"        })

set("n", "<leader>tdi", builtin.diagnostics, { desc = " Diagnostics"     })
set("n", "<leader>tkm", builtin.keymaps,     { desc = " Show keymaps"    })
set("n", "<leader>tcc", builtin.commands,    { desc = "󰘳 Commands"        })
set("n", "<leader>tch", builtin.help_tags,   { desc = "󰍜 Help tags"       })
set("n", "<leader>tcq", builtin.quickfix,    { desc = " Quickfix list"   })
set("n", "<leader>tcj", builtin.jumplist,    { desc = " Jumplist"        })

-- spell suggestion in normal + insert
set({ "n", "i" }, "<C-s>", builtin.spell_suggest, { desc = "󰓆 Spelling suggestions" })
