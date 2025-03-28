local set = vim.keymap.set
local builtin = require("telescope.builtin")
set("n", "<leader>ff", builtin.find_files,  { desc = "Used to quickly find a file" })
set("n", "<leader>km", builtin.keymaps,     { desc = "get all keymasp" })
set("n", "<leader>fg", builtin.live_grep,   { desc = "Used to find code in a project" })
set("n", "<leader>fo", builtin.oldfiles,    { desc = "Used to find the most recently used files" })
set("n", "<leader>di", builtin.diagnostics, { desc = "Lists diagnostics in a project" })
set("n", "<leader>tm", builtin.marks,       { desc = "Lists vim marks and their value"})
set("n", "<leader>tr", builtin.registers,   {desc = "Lists vim registers, pastes the contents of the register on enter"})

set({ "n", "i" }, "<C-s>", builtin.spell_suggest, { desc = "Lists spelling suggestions for the current word under the cursor" })
