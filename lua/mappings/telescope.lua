local set = vim.keymap.set
local builtin = require("telescope.builtin")
set("n",    "<leader>ff", builtin.find_files,  { desc = "Used to quickly find a file" })
set("n",    "<leader>fg", builtin.live_grep,   { desc = "Used to quickly find code" })
set("n",    "<leader>fo", builtin.oldfiles,    { desc = "Used to find the most recently used files" })
set("n",    "<leader>di", builtin.diagnostics, { desc = "Lists diagnostics" })
set( { "n", "i" },        "<C-s>",             builtin.spell_suggest, { desc = "Lists spelling suggestions for the current word under the cursor" })
