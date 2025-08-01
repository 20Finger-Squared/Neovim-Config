local telescope = require("telescope")
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fb", builtin.buffers,     { desc = " Find Buffers" })
vim.keymap.set("n", "<leader>ff", builtin.find_files,  { desc = " Find Files" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles,    { desc = " Find Old Files" })
vim.keymap.set("n", "<leader>fm", builtin.marks,       { desc = "󰬴 Marks" })
vim.keymap.set("n", "<leader>fr", builtin.registers,   { desc = " Registers" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep,   { desc = " Live Grep" })
vim.keymap.set("n", "<leader>fc", builtin.live_grep,   { desc = " Commands" })

vim.keymap.set({ "n", "i" }, "<C-s>", builtin.spell_suggest, { desc = "󰓆 Spell suggest" })
