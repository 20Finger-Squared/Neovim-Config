local set = vim.keymap.set
local builtin = require("telescope.builtin")
set("n", "<C-p>",      builtin.find_files, { desc = "Used to quickly find a file"})
set("n", "<leader>fg", builtin.live_grep,  { desc = "Used to quickly find code" })
set("n", "<leader>fo", builtin.oldfiles,   { desc = "Used to find the most recently used files" })
