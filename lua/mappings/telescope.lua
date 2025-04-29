local set = vim.keymap.set
local builtin = require("telescope.builtin")

set("n", "<leader>ff", builtin.find_files,  { desc = "󰈞 Find files"   })
set("n", "<leader>fg", builtin.live_grep,   { desc = "󰱼 Grep project" })
set("n", "<leader>fo", builtin.oldfiles,    { desc = "󰄉 Recent files" })

set("n", "<leader>tdi", builtin.diagnostics, { desc = " Diagnostics"     })
set("n", "<leader>th",  builtin.colorscheme, { desc = "󰌗 Pick colorscheme"})
set("n", "<leader>tm",  builtin.marks,       { desc = " Vim marks"       })
set("n", "<leader>tr",  builtin.registers,   { desc = " Registers"       })
set("n", "<leader>tkm", builtin.keymaps,     { desc = " Show keymaps"    })
set("n", "<leader>tfc", builtin.commands,    { desc = "󰘳 Commands"        })
set("n", "<leader>tfh", builtin.help_tags,   { desc = "󰍜 Help tags"       })
set("n", "<leader>tfq", builtin.quickfix,    { desc = " Quickfix list"   })
set("n", "<leader>tfj", builtin.jumplist,    { desc = " Jumplist"        })

set({ "n", "i" }, "<C-s>", builtin.spell_suggest, { desc = "󰓆 Spelling suggestions" }) -- spellcheck
