
-- requirements for the mappings so don't touch these
local builtin = require("telescope.builtin")

-- normal mode shortcuts
-- normal Ctrl shortcuts
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- requires the telescope.builtin
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
-- normal leader shortcuts
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- requires the telescope.builtin
vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {}) -- requires the telescope.builtin
